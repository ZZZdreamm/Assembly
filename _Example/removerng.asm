


; ebx, edi, esi, ebp - musza byc zapisane w funkcji
; rejestry do uzytku: eax, ecx, edx, ebx, esi, edi
; rejestry - esp, ebp

section .text
global  removerng

removerng:
; eax - wskazanie (adres) odczytu
; edx - wskazanie (adres) zapisu


    push    ebp
    mov ebp, esp

    push ebx
    push edi

    mov eax, [ebp+8]    ; adres bufora (stringa do zmiany)
    mov edx, eax

; loop to iterate string
remove_loop:
    mov bl, [eax]
    test bl, bl
    jz fin

    ;
    inc eax             ; increments eax by 1
    ; dec edi
    ; jz load_edi

; save correct character
save_char:
    mov [edx], bl
    inc edx
    test bl, bl
    jnz remove_loop


fin:
    mov [edx], dword 0
    mov eax, [ebp+8]    ; zwracam adres bufora
    pop edi
    pop ebx
    pop ebp
    ret