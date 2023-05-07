section	.text
global  remove_last_num

remove_last_num:
;	eax - wskaźnik czytający
;	ecx - wskaźnik na początek ostatniej liczby
;	ebx - wskaznik na koniec ostatniej liczby
;	dl - aktualny char

	push	ebp
	mov	ebp, esp
	push	ebx
	push	esi
	
	mov	eax, [ebp+8]
	mov	esi, 0

	dec	eax

look_for_num:
	inc	eax
	mov	dl,	[eax]	; aktualny char
	test	dl, dl
	jz	write_string_loop	; jezli zero konczące - przejdz do pisania

	cmp	dl, '0'
	jb	look_for_num	; nie cyfra - szukanie dalej

	cmp	dl, '9'	
	ja	look_for_num	; nie cyfra - szukanie dalej

	mov	ecx, eax	; cyfra - ladujemy adres pierwszego znaku liczby do ecx
	mov	esi, 1

num_loop:
	inc	eax
	mov	dl, [eax]
	mov	ebx, eax	; ladujemy adres kolejnego znaku byc moze liczby do ebx, jezli nie liczba do zostanie jako pierwszy znak po koncu liczby

	cmp	dl, '0'
	jb	look_for_num	; nie cyfra, konczymy num_loop i spowrotem szukanie

	cmp	dl, '9'
	ja	look_for_num	; nie cyfra, to samo co wyzej

	jmp	num_loop	; w takim razie cyfra, num_loop leci dalej

write_string_loop:
	test	esi, esi
	jz	fin
	mov	dl, [ebx]
	mov	[ecx], dl
	test	dl, dl
	jz	fin
	inc	ecx
	inc	ebx
	jmp	write_string_loop

fin:
	mov	eax, [ebp+8]

	pop	esi
	pop	ebx
	pop	ebp
	ret


