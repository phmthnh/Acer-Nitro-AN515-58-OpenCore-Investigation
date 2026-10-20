"""VM-only follow-through past the previously measured XNU entry."""
import argparse,importlib.util,json,plistlib,shutil,subprocess,time
from pathlib import Path
R=Path(__file__).resolve().parent
s=importlib.util.spec_from_file_location('lab',R/'qemu-gdb-lab.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)

oldlab=m.LAB
m.LAB=oldlab.parent/'audit-20261020-lab';m.LAB.mkdir(exist_ok=True)
m.MEDIA=m.LAB/'media'
fw=m.LAB/'qemu/share';fw.mkdir(parents=True,exist_ok=True)
for name in ['edk2-i386-vars.fd','edk2-x86_64-code.fd']:
    shutil.copy2(oldlab/'qemu/share'/name,fw/name)

p=argparse.ArgumentParser();p.add_argument('action',choices=['prepare','run','resume']);a=p.parse_args()
package=R/'EFI-Sequoia-Kernel-Progress-VM-ONLY'
report=json.loads((R/'oc-stage-trace-v7/BUILD-REPORT.json').read_text())
if a.action=='prepare':
    # Existing VM-only package is preserved; prepare only an isolated copy.
    m.prepare(package);m.image();raise SystemExit(0)
    shutil.copytree(R/'EFI-Sequoia-OC-Stage-Trace-v7/EFI',package/'EFI',dirs_exist_ok=True)
    cfg=package/'EFI/OC/config.plist';v=plistlib.loads(cfg.read_bytes())
    guid='7C436110-AB2A-4BBB-A880-FE41995C9F82'
    v['NVRAM']['Add'][guid]['boot-args']='-v debug=0x108 keepsyms=1 cpus=1 serial=3'
    cfg.write_bytes(plistlib.dumps(v,sort_keys=False))
    (package/'BUILD-REPORT.json').write_text(json.dumps(dict(vm_only=True,source_build=report),indent=2))
    m.prepare(package);m.image();raise SystemExit(0)
manifest=json.loads((m.LAB/'media-manifest.json').read_text());assert Path(manifest['source_package'])==package
assert m.sha(package/'EFI/OC/OpenCore.efi')==report['efi_sha256']
disk_hash=m.sha(m.LAB/'media-disk.img')
if a.action!='resume':m.start()
run=Path(json.loads((m.LAB/'run.json').read_text())['run'])
dest=R/'boot-audit-20261020/post-entry-proof';dest.mkdir(exist_ok=True)
try:
    m.qmp('cont');deadline=time.monotonic()+150
    while time.monotonic()<deadline:
        if (run/'serial.log').exists() and 'OCRAM: Extent allocation' in (run/'serial.log').read_text(errors='replace'):break
        time.sleep(.5)
    else:raise RuntimeError('Recovery load not reached')
    exec((R/'make-lab-breakpoint.py').read_text().replace("LAB=Path.home()/'.cache/codex-hackintosh-an51558/qemu-gdb-lab'", 'LAB=Path('+repr(str(m.LAB))+')'), {})
    script=(m.LAB/'trace-gate.gdb').read_text()
    needle='printf "CALL GATE BOUNDARY REACHED\\n"'
    script=script.replace(needle,needle+f'\nset $cr0 = $cr0 & ~0x20\nset $cr4 = $cr4 & ~0x10000\nset {{unsigned int}}($ocbase+{report["mode_rva"]}) = 0\n')
    needle='set logging enabled off\ndisconnect'
    extra=f'''python
entry=int(gdb.parse_and_eval('$entry'))
assert bytes(gdb.selected_inferior().read_memory(entry,2)) == bytes.fromhex('89c7'), 'Unexpected entry instruction; stop'
saved_eax=int(gdb.parse_and_eval('$eax'))
end
stepi
python
assert int(gdb.parse_and_eval('$rip')) == entry+2, 'First instruction did not complete normally'
assert int(gdb.parse_and_eval('$edi')) == saved_eax, 'mov edi,eax result mismatch'
end
printf "FIRST ORIGINAL KERNEL INSTRUCTION VERIFIED\\n"
dump binary memory {(run/'kernel-entry-16k.bin').as_posix()} $entry $entry+0x4000
set $steps=0
while $steps < 300
stepi
printf "KSTEP %u RIP=%#lx CS=%#lx CR0=%#lx CR3=%#lx CR4=%#lx EFER=%#lx\\n",$steps,$rip,$cs,$cr0,$cr3,$cr4,$efer
set $steps=$steps+1
end
monitor info registers
set logging enabled off

disconnect'''
    assert needle in script;script=script.replace(needle,extra)
    (run/'kernel-progress.gdb').write_text(script)
    subprocess.run([str(m.GDB),'-nx','-batch','-x',str(run/'kernel-progress.gdb')],check=True,timeout=210,stdout=(run/'gdb-console.txt').open('w'),stderr=subprocess.STDOUT)
    m.qmp('cont')
    for i in range(12):
        time.sleep(5)
        (run/f'progress-{i:02}.txt').write_text(m.qmp('human-monitor-command',{'command-line':'info registers'})['return'])
    m.qmp('stop')
    m.qmp('screendump',{'filename':(run/'after-kernel.png').as_posix(),'format':'png'})
    assert m.sha(m.LAB/'media-disk.img')==disk_hash
    for name in ['gdb-gate-trace.log','gdb-console.txt','kernel-entry-16k.bin','serial.log','after-kernel.png','kernel-progress.gdb']:
        if (run/name).exists():shutil.copy2(run/name,dest/name)
    for src in run.glob('progress-*.txt'):shutil.copy2(src,dest/src.name)
    (dest/'result.json').write_text(json.dumps(dict(run=str(run),physical_tested=False,source_disk_unchanged=True,cr0_ne_zero=True,cr4_fsgsbase_zero=True,mode='control E004',boot_args='-v debug=0x108 keepsyms=1 cpus=1 serial=3'),indent=2))
    m.qmp('quit');print('Kernel progress captured; VM stopped; physical USB unchanged')
except Exception:
    m.qmp('stop');(run/'failure-registers.txt').write_text(m.qmp('human-monitor-command',{'command-line':'info registers'})['return']);m.qmp('quit');raise
