


; ebx, edi, esi, ebp - musza byc zapisane w funkcji


section .text
global  removerng

removerng:
; eax - wskazanie (adres) odczytu
; edx - wskazanie (adres) zapisu

    push    ebp
    mov ebp, esp

    push ebx
    
    mov eax, [ebp+8]    ; adres bufora (od poczatku)
    mov edx, eax
    mov ebx, [ebp+8]    ; adres bufora

go_to_end:      ; ide do konca stringa
    mov cl, [ebx]
    inc ebx
    test cl, cl
    jnz go_to_end
    dec ebx
    dec ebx


; loop to iterate string
remove_loop:
    mov cl, [eax]
    mov ch, [ebx]
    cmp eax, ebx
    jnbe fin


; save correct character
save_char:
    mov [eax], ch
    mov [ebx], cl
    inc eax             ; increments eax by 1
    dec ebx
    jnz remove_loop


fin:
    mov eax, [ebp+8]    ; zwracam adres bufora

    pop ebx
    pop ebp
    ret