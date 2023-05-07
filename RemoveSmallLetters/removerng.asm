


; ebx, edi, esi, ebp - musza byc zapisane w funkcji

section .text
global  removerng

removerng:
; eax - wskazanie (adres) odczytu
; edx - wskazanie (adres) zapisu
; cl - znak dolny (low)
; ch - znak gorny (high)
; bl - znak odczytany z ciagu
    push    ebp
    mov ebp, esp
    push ebx
    mov eax, [ebp+8]    ; adres bufora (stringa do zmiany)
    mov edx, eax
    mov cl, [ebp+12]   ; adres dolnej zmiennej (low)
    mov ch, [ebp+16]   ; adres gornej zmiennej (high)

remove_loop:
    mov bl, [eax]
    inc eax             ; increments eax by 1

    cmp bl, cl
    jl  save_char
    cmp bl, ch
    jle remove_loop


save_char:
    mov [edx], bl
    inc edx
    test bl, bl
    jnz remove_loop

    mov eax, [ebp+8]    ; zwracam adres bufora
    pop ebx
    pop ebp
    ret
