"""Generate GDB commands using the exact staged OpenCore machine code."""
from pathlib import Path
import struct, json
LAB=Path.home()/'.cache/codex-hackintosh-an51558/qemu-gdb-lab'
efi=LAB/'media/EFI/OC/OpenCore.efi'
b=efi.read_bytes();pe=struct.unpack_from('<I',b,60)[0];num=struct.unpack_from('<H',b,pe+6)[0];opt=struct.unpack_from('<H',b,pe+20)[0]
rva=int(json.loads((LAB/'media-manifest.json').read_text()).get('boundary_rva','0x766f4'),16)
for i in range(num):
    s=pe+24+opt+40*i;vs,va,sz,off=struct.unpack_from('<IIII',b,s+8)
    if va<=rva<va+sz:pattern=b[off+rva-va:off+rva-va+24];break
script='''set pagination off
set confirm off
set architecture i386:x86-64
set remotetimeout 10
target remote 127.0.0.1:1234
set logging file {log}
set logging overwrite on
set logging enabled on
find /b 0x7b000000, 0x7fffffff, {pattern}
set $boundary = (unsigned long long)$_
while (($boundary & 0xfff) != {page_offset})
find /b 0x7b000000, $boundary-1, {pattern}
set $boundary = (unsigned long long)$_
end
set $ocbase = $boundary - {rva}
printf "OpenCore base=%#lx boundary=%#lx\\n", $ocbase, $boundary
x/8i $boundary
hbreak *$boundary
continue
python assert int(gdb.parse_and_eval('$rip')) == int(gdb.parse_and_eval('$boundary')), 'Interrupted before boundary'
printf "CALL GATE BOUNDARY REACHED\\n"
info registers rip rcx rdx r8 cr0 cr3 cr4 efer
set $gate = $rcx
set $entry = $rdx
set $args = $r8
x/24i $gate
x/32bx $entry
monitor info registers
dump binary memory {gate_dump} $gate $gate+256
dump binary memory {args_dump} $args $args+4096
delete breakpoints
hbreak *$gate
continue
python assert int(gdb.parse_and_eval('$rip')) == int(gdb.parse_and_eval('$gate')), 'Interrupted before gate'
printf "APPLE NATIVE GATE EXECUTED\\n"
info registers rip rcx rdx cr0 cr3 cr4 efer
dump binary memory {patched_gate_dump} $gate $gate+256
delete breakpoints
hbreak *$entry
continue
python assert int(gdb.parse_and_eval('$rip')) == int(gdb.parse_and_eval('$entry')), 'Interrupted before XNU entry'
printf "XNU PHYSICAL ENTRY EXECUTED\\n"
info registers rip rax cs cr0 cr3 cr4 efer
monitor info registers
set logging enabled off
disconnect
'''
run=Path(json.loads((LAB/'run.json').read_text())['run'])
(LAB/'trace-gate.gdb').write_text(script.format(rva=hex(rva),page_offset=hex(rva&4095),log=(run/'gdb-gate-trace.log').as_posix(),pattern=','.join(hex(x) for x in pattern),gate_dump=(run/'native-gate.bin').as_posix(),patched_gate_dump=(run/'gate-at-execution.bin').as_posix(),args_dump=(run/'boot-args.bin').as_posix()))
print(LAB/'trace-gate.gdb')
