;Imports of MacWinCursor:
	extern _ZdlPv
	extern _ZN9__gnu_cxx18__exchange_and_addEPVii
	extern _ZNSs4_Rep10_M_destroyERKSaIcE
	extern _Unwind_Resume
	extern GetGlobalMouse
	extern _ZN8MacTools17SetCursorPositionERK5Point

;Exports of MacWinCursor:
	global _GLOBAL__I_LoadCursorFromFileA
	global sCursorList
	global _Z41__static_initialization_and_destruction_0ii_dup_1
	global __tcf_0_dup_1
	global GetCursorPos
	global SetCursorPos


SECTION .text


;__tcf_0_dup_1
__tcf_0_dup_1:
	push ebp
	mov ebp, esp
	push edi
	push esi
	push ebx
	sub esp, 0x3c
	mov edi, [sCursorList+0x4]
	mov eax, [sCursorList]
	mov ebx, eax
	cmp edi, eax
	jz __tcf_0_dup_1_10
	mov eax, [0xd5cc01c]
	mov [ebp-0x2c], eax
__tcf_0_dup_1_30:
	mov eax, [ebx+0x4]
	lea esi, [eax-0xc]
	cmp esi, [ebp-0x2c]
	jnz __tcf_0_dup_1_20
__tcf_0_dup_1_50:
	add ebx, 0x44
	cmp edi, ebx
	jnz __tcf_0_dup_1_30
	mov eax, [sCursorList]
__tcf_0_dup_1_10:
	test eax, eax
	jz __tcf_0_dup_1_40
	mov [esp], eax
	call _ZdlPv
__tcf_0_dup_1_40:
	add esp, 0x3c
	pop ebx
	pop esi
	pop edi
	pop ebp
	ret
__tcf_0_dup_1_20:
	sub eax, 0x4
	mov dword [esp+0x4], 0xffffffff
	mov [esp], eax
	call _ZN9__gnu_cxx18__exchange_and_addEPVii
	test eax, eax
	jg __tcf_0_dup_1_50
	lea eax, [ebp-0x19]
	mov [esp+0x4], eax
	mov [esp], esi
	call _ZNSs4_Rep10_M_destroyERKSaIcE
	jmp __tcf_0_dup_1_50
	mov ebx, eax
	mov eax, [sCursorList]
	test eax, eax
	jz __tcf_0_dup_1_60
	mov [esp], eax
	call _ZdlPv
__tcf_0_dup_1_60:
	mov [esp], ebx
	call _Unwind_Resume


;GetCursorPos
GetCursorPos:
	push ebp
	mov ebp, esp
	push ebx
	sub esp, 0x24
	mov ebx, [ebp+0x8]
	lea eax, [ebp-0xc]
	mov [esp], eax
	call GetGlobalMouse
	movsx eax, word [ebp-0xa]
	mov [ebx], eax
	movsx eax, word [ebp-0xc]
	mov [ebx+0x4], eax
	mov eax, 0x1
	add esp, 0x24
	pop ebx
	pop ebp
	ret
	nop


;SetCursorPos
SetCursorPos:
	push ebp
	mov ebp, esp
	sub esp, 0x28
	mov eax, [ebp+0x8]
	mov [ebp-0xa], ax
	mov eax, [ebp+0xc]
	mov [ebp-0xc], ax
	lea eax, [ebp-0xc]
	mov [esp], eax
	call _ZN8MacTools17SetCursorPositionERK5Point
	mov eax, 0x1
	leave
	ret
	add [eax], al


;Initialized global or static variables of MacWinCursor:
SECTION .data


;Initialized constant data of MacWinCursor:
SECTION .rdata


;Zero initialized global or static variables of MacWinCursor:
SECTION .bss
sCursorList: resb 0x80


;All cstrings:
SECTION .rdata



;All constant floats and doubles:
SECTION .rdata

