; Before native32: pass context in RSI, saving full RSI/RSP. Native gate does
; not use RSI or stack. In control, the plain tail does not touch either.
BITS 64
DEFAULT REL
SECTION .text
extern ASM_PFX(mStageEntryContext)
global ASM_PFX(AppleMapStagePlainTail)
global ASM_PFX(AppleMapStageEntryTail)
ASM_PFX(AppleMapStageEntryTail):
  mov [rel ASM_PFX(mStageEntryContext)],rsi
  mov [rel ASM_PFX(mStageEntryContext)+8],rsp
  lea rsi,[rel ASM_PFX(mStageEntryContext)]
ASM_PFX(AppleMapStagePlainTail):
  mov rax,[rel ASM_PFX(mGateTraceFarPointer)]
  db 0xFF,0x28

BITS 32
align 16
global ASM_PFX(AppleMapStageEntry32)
global ASM_PFX(AppleMapStageEntry32End)
ASM_PFX(AppleMapStageEntry32):
  mov [esi+16],eax
  mov [esi+20],ebx
  mov [esi+24],ecx
  mov [esi+28],edx
  mov [esi+32],edi
  lea esp,[esi+4224]
  pushfd
  pop dword [esi+36]
  mov eax,cr0
  mov [esi+40],eax
  mov ecx,0xC0000080
  rdmsr
  mov [esi+44],eax
  mov [esi+48],edx
  mov dword [esi+104],0xC801
  lgdt [esi+72]
  or eax,0x100
  wrmsr
  mov eax,[esi+40]
  or eax,0x80000000
  mov cr0,eax
  jmp far [esi+92]
ASM_PFX(AppleMapStageEntry32End):

BITS 64
align 16
global ASM_PFX(AppleMapStageEntry64)
global ASM_PFX(AppleMapStageEntry64End)
ASM_PFX(AppleMapStageEntry64):
  mov eax,[rsi+64]
  mov rdx,[rsi+56]
  mov [rax],rdx
  mfence
  xor eax,eax
  cpuid
  mov dword [rsi+104],0xC802
%assign r 32
%rep 16
  mov rax,[rel ASM_PFX(mGateTraceRows)+r*8]
%assign c 0
%rep 16
  mov dword [rax+c*4],0xFFFFFF
%assign c c+1
%endrep
%assign r r+1
%endrep
  mfence
  mov eax,[rsi+36]
  push rax
  popfq
  mov rdi,rsi
  mov rsp,[rdi+8]
  mov rsi,[rdi]
  lgdt [rdi+82]
  db 0xFF,0x6F,0x62 ; native m16:32 form, deliberately no REX.W
ASM_PFX(AppleMapStageEntry64End):

BITS 32
align 16
global ASM_PFX(AppleMapStageEntryExit32)
global ASM_PFX(AppleMapStageEntryExit32End)
ASM_PFX(AppleMapStageEntryExit32):
  mov eax,[edi+40]
  mov cr0,eax
  mov ecx,0xC0000080
  mov eax,[edi+44]
  mov edx,[edi+48]
  wrmsr
  mov dword [edi+104],0xC803
  mov eax,[edi+16]
  mov ebx,[edi+20]
  mov ecx,[edi+24]
  mov edx,[edi+28]
  mov edi,[edi+32]
  jmp edi
ASM_PFX(AppleMapStageEntryExit32End):
