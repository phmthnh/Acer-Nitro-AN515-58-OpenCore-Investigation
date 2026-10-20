"""Independent E008 entry-patch, CPU state, native gate and pixel checks."""
from pathlib import Path
import json,re
R=Path(__file__).resolve().parent;D=R/'qemu-gdb-results-stage-v8'
report=json.loads((R/'oc-stage-trace-v8/BUILD-REPORT.json').read_text())
src=(R/'oc-stage-trace-v8/StageTrace.c').read_text()
fonts=[tuple(map(int,x.split(','))) for x in re.findall(r'\{(\d+(?:,\d+){6})\}',src)[:16]]
def regs(folder):
    text=(folder/'entry-registers.txt').read_text();log=(folder/'gdb-gate-trace.log').read_text()
    keys=['EAX','EBX','ECX','EDX','ESI','EDI','EBP','ESP','EIP','EFL','CR0','CR2','CR3','CR4','EFER']
    v={k:int(re.search(r'\b'+k+r'=([0-9a-fA-F]+)',text)[1],16) for k in keys}
    for k in ['ES','CS','SS','DS','FS','GS','LDT','TR','GDT','IDT']:v[k]=re.search(r'^'+k+r'\s*=([^\r\n]+)',text,re.M)[1].strip()
    entry=int(re.search(r'^rdx\s+(0x[0-9a-f]+)',log,re.M)[1],16);args=int(re.search(r'^r8\s+(0x[0-9a-f]+)',log,re.M)[1],16)
    gate=int(re.findall(r'^rcx\s+(0x[0-9a-f]+)',log,re.M)[0],16)
    assert v['EAX']==v['EBX']==args and v['EIP']==v['EDI']==entry
    assert v['CR0']==0x10013 and v['CR4']==0x40668 and v['EFER']==0x800
    assert int(v['GDT'].split()[0],16)==gate+0x6a and int(v['GDT'].split()[1],16)==0x18
    for k in ['EAX','EBX']:v[k]='validated Args'
    for k in ['EIP','EDI']:v[k]='validated entry'
    return v,entry
control,_=regs(D/'control')
for case in ['control','active','high','reject','entryreject']:
    f=D/case;r=json.loads((f/'result.json').read_text());assert r['status']=='passed' and r['efi_sha256']==report['efi_sha256']
    state,entry=regs(f);assert state==control,{k:(control[k],v) for k,v in state.items() if v!=control[k]}
    log=(f/'gdb-gate-trace.log').read_text();base=int(re.search(r'OpenCore base=(0x[0-9a-f]+)',log)[1],16)
    before=(f/'native-gate.bin').read_bytes();after=(f/'gate-at-execution.bin').read_bytes()
    kernel=(f/'kernel-original.bin').read_bytes();patched=(f/'kernel-patched.bin').read_bytes()
    if case in ['reject','entryreject']:
        assert before==after
        if case=='reject':assert patched==kernel
        else:assert patched[0]==0x90 and patched[1:]==kernel[1:]
    else:
        assert before[:0x22]==after[:0x22] and before[0x37:]==after[0x37:]
        assert after[0x22:0x37]==b'\xff\x25'+bytes(4)+(base+int(report['gate_stub_rva'],16)).to_bytes(8,'little')+b'\x90'*7
        if case=='control':assert patched==kernel
        else:
            target=(entry+5+int.from_bytes(patched[1:5],'little'))&0xffffffff
            assert patched[0]==0xe9 and target==base+int(report['entry32_rva'],16) and patched[5:]==kernel[5:]
            assert (f/'kernel-restored.bin').read_bytes()==kernel
            assert json.loads((f/'entry-before-state.json').read_text())==json.loads((f/'entry-after-state.json').read_text())
            assert all(x in log for x in ['PSTART TRAMPOLINE ENTERED','PSTART PROBE LONG64 REACHED','PSTART PROBE RETURN32 REACHED','PSTART RESTORED ENTRY EXECUTED'])
    if case=='high':
        w,h=1280,800;raw=(f/'high-framebuffer.bin').read_bytes();assert len(raw)==w*h*4
        def pixel(x,y):return raw[(y*w+x)*4:(y*w+x)*4+3][::-1]
    else:
        magic,dim,depth,raw=(f/'screen.ppm').read_bytes().split(b'\n',3);w,h=map(int,dim.split());assert magic==b'P6' and depth==b'255'
        def pixel(x,y):return raw[(y*w+x)*3:(y*w+x)*3+3]
    value=''
    for i in range(4):
        rows=tuple(sum(16>>c for c in range(5) if pixel(w-940+i*12+c*2,500+r*2)==b'\xff\xff\xff') for r in range(7));value+=format(fonts.index(rows),'X')
    assert value==('E004' if case=='control' else 'E8E1' if case in ['reject','entryreject'] else 'E008'),(case,value)
    if case not in ['reject','entryreject']:
        for box in range(2 if case=='control' else 3):
            color=b'\0\xff\0' if box<2 else b'\xff\xff\xff'
            assert all(pixel(w-940+box*40+4+x,528+y)==color for x in range(16) for y in range(16)),(case,box)
summary=dict(status='passed',efi_sha256=report['efi_sha256'],cases=5,original_native32_bytes_unchanged=True,
    entry_patch_exactly_five_bytes=True,original_entry_bytes_restored=True,registers_flags_control_state_preserved=True,
    cr0_ne_zero_and_cr4_fsgsbase_zero=True,low_and_high_white_beacons=True,guards_reject_gdt_and_entry_mismatch=True,
    native_gdtr_restored=True,physical_tested=False,
    limitation='White proves trampoline arrival at original pstart address; it precedes probe unwind and does not prove pstart initialization or Recovery on Acer. Temporary CR0/EFER/GDT/stack changes can affect hardware behavior.')
(D/'VERIFICATION.json').write_text(json.dumps(summary,indent=2));print(json.dumps(summary,indent=2))
