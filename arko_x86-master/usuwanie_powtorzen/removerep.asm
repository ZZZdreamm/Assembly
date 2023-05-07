section	.text
global  remrep

remrep:
;	eax - czytajacy pointer
;	ecx - piszący pointer
;	edx - skanujący pointer
;	bl - aktualny znak
;	bh - znak ze skanu
	push	ebp
	mov	ebp, esp
	push	ebx

	mov	eax, [ebp+8]
	mov	ecx, eax
	dec	eax
	
newchar:
	inc	eax
	mov	edx, [ebp+8]
	mov	bl, [eax]
	test	bl, bl
	jz	fin

charloop:
	mov	bh, [edx]

	cmp	eax, edx	; powownanie aktualnego chara ze zeskanowanym
	jz	writechar	; skocz do zapisania jezeli adresy obu sa takie same (wczesniej nie bylo takiego samego chara)

	cmp	bl, bh
	jz	newchar

	inc	edx
	jmp	charloop

writechar:
	mov	[ecx], bl
	inc	ecx
	jmp	newchar

fin:
	mov	[ecx], dword 0
	mov	eax, [ebp+8]	; zwracanie wskaznika na wynikowy string

	pop	ebx
	pop	ebp
	ret


