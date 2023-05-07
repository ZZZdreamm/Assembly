


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
    push edi

    mov eax, [ebp+8]    ; adres bufora (stringa do zmiany)
    mov edi, 0
    mov ebx, 0

; loop to iterate string
check_for_num:
    mov bl, [eax]
    inc eax             ; increments eax by 1
    test bl, bl
    jz fin

    cmp	bl, '0'	; szukamy dalej pierwszej liczby
	jb	check_for_num

    cmp	bl, '9'
	ja	check_for_num

read_num:
	sub	bl, '0' ; zamiana cyfry w ascii na liczbe


num_loop:
    shl edi, 4  	; mnozenie x16 tego co mamy w akumulatorze (bo hex)
    add	edi, ebx	; dodanie liczby do akumulatora

    mov	bl, [eax]
    inc	eax

    cmp	bl, '0'
	jb	fin	; sie liczba skonczyla

	cmp	bl, '9'
	jbe	read_num	; mamy cyfre kolejna

    cmp	bl, 'A'
	jb	fin	; sie liczba skonczyla znowu

	cmp	bl, 'F'
	ja	fin	; i tu także

	sub	bl, 55	; jezeli tu jestesmy to mamy cyfre A-F w hexie, zamianka na liczbe
	jmp	num_loop


fin:
    mov eax, edi
    pop edi
    pop ebx
    pop ebp
    ret