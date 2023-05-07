


; ebx, edi, esi, ebp - musza byc zapisane w funkcji
; rejestry do uzytku: eax, ecx, edx, , ,
; rejestry - esp, ebp

section .text
global  nthnum

nthnum:
; eax - wskazanie (adres) odczytu


    push    ebp
    mov ebp, esp

    push edi

    mov eax, [ebp+8]    ; adres bufora
    mov ecx, [ebp+12]   ; N liczba
    mov edi, 0          ; wynik
    mov edx, 0          ; obecnie skanowana cyfra

check_if_n:             ; checks at start if N is 0
    test ecx, ecx
    jz fin


check_for_num:          ; iterates string until finds number
    mov dl, [eax]
    test dl, dl
    jz fin

    inc eax             ; increments eax by 1

    cmp dl, '0'
    jb check_for_num

    cmp	dl, '9'
	ja	check_for_num

    dec ecx
    jz change_str_to_num

in_not_N_num:           ; goes through whole number which is not N-th number
    mov dl, [eax]
    test dl, dl
    jz fin

    inc eax

    cmp dl, '0'
    jb check_for_num

    cmp	dl, '9'
	ja	check_for_num

    jmp in_not_N_num

change_str_to_num:
	sub	dl, '0' ; zamiana cyfry w ascii na liczbe

add_num:
    imul edi, 10
    add edi, edx

    mov dl, [eax]
    test dl, dl
    jz fin

    inc eax             ; increments eax by 1

    cmp dl, '0'
    jb fin

    cmp	dl, '9'
	; ja	fin

    jbe change_str_to_num


fin:
    mov eax, edi   ; zwracam adres bufora
    pop edi
    pop ebp
    ret