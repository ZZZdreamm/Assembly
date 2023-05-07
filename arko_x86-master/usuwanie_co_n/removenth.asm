section	.text
global  removenth

removenth:
;	eax - wskazanie na input string
;	ecx - wskazanie na zapisywany string
;	edx - iterator
;	esi - n
;	bl - aktualny char

	push	ebp
	mov	ebp, esp
	push	ebx
	push	esi

	mov	eax, [ebp+8]	; adres input stringa
	mov	ecx, eax		; wskaźnik zapisywania
	mov esi, [ebp+12]	; n
	sub esi, 1
load_iter:
	mov	edx, esi		; iterator
remove_loop:
	mov	bl, [eax]
	inc	eax
	test	bl, bl
	jz	fin
	dec	edx
	jz	load_iter

	mov	[ecx], bl
	inc	ecx
	jmp	remove_loop

fin: 
	mov [ecx], dword 0
	mov	eax, [ebp+8]	; zwracanie wskaznika na wynikowy string

	pop	esi
	pop	ebx
	pop	ebp
	ret


