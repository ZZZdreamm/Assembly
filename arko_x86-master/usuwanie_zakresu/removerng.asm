;=====================================================================
; ARKO - example Intel x86 assembly program
;
; author:      Rajmund Kozuszek
; date:        2023.03.31
; description: x86 (32-bit) - function modifying the input string 
;					int removerng(char* nts_buffer, char low, char high);
;				removes all characters in range <low, high> from 
;				the input string
;				returns the pointer to the input buffer
;-------------------------------------------------------------------------------

section	.text
global  removerng

removerng:
	push	ebp
	mov	ebp, esp
	mov	eax, [ebp+8]	; address of character buffer to eax
;	mov	BYTE [eax], 'L'	; *eax = 'L'
	mov eax, [ebp+12]	; read low parameter
	mov eax, [ebp+16]	; read high parameter
	mov	eax, [ebp+8]	; return character buffer address
	pop	ebp
	ret


;
;============================================
; THE STACK - thanks to Zbigniew Szymanski
;============================================
;
; larger addresses
; 
;  |                               |
;  | ...                           |
;  ---------------------------------
;  | function parameter - char *nts| EBP+8
;  ---------------------------------
;  | return address                | EBP+4
;  ---------------------------------
;  | saved ebp                     | EBP, ESP
;  ---------------------------------
;  | ... here local variables      | EBP-x
;  |     when needed               |
;
; \/                              \/
; \/ the stack grows in this      \/
; \/ direction                    \/
;
; lower addresses
;
;
;============================================
