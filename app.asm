section .data
	hello: db "Hi Mom!", 10 ; String to print
	helloLen: equ $-hello	; Length of string
	hellob: db "Hi Dad!", 10; String to print
	helloLenb: equ $-hellob ; Legth of String

section .text
	global _start	;entry point for Linker


	_start:
		mov rax,1			; sys_write
		mov rdi,1			; stdout
		mov rsi,hello		; message to write
		mov rdx,helloLen	; message Length
		syscall				; call kernel

		mov rax,1
		mov rdi,1
		mov rsi,hellob
		mov rdx,helloLenb
		syscall

		; end program
		mov rax,60			; sys_exit
		mov rdi,0			; error code 0 (seccess)
		syscall				; call kernel
