section	.text
global  reverse_pairs

reverse_pairs:
;	eax - wskaźnik czytający z przodu
;	ecx - wskaźnik czytający z tyłu
;	dh - char z eax
;	dl - char z ecx
	push	ebp
	mov	ebp, esp

	mov	eax, [ebp+8]
	mov	ecx, eax
	inc	eax

swap_loop:
	mov	dh,	[eax]
	mov	dl, [ecx]
	test	dl, dl
	jz	fin

	test	dh, dh
	jz	fin

	mov	[eax], dl
	mov	[ecx], dh

	add eax, 2
	add	ecx, 2
	jmp	swap_loop
fin:
	mov	eax, [ebp+8]	; zwracanie wskaznika na wynikowy string

	pop	ebp
	ret


