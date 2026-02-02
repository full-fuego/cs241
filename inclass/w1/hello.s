;;; 
;;; hello.s
;;; Prints hello, world
;;; 

;;; For global read and write data (global variables)
section .data

msg: db "Hello, world!", 10 ; Msg. to print
msg2: db 72,101,33,10 		; Msg2 using ASCII characters


MSGLEN:	equ	14 ; Make label equal thirteen

section	.text

start:
	mov	rax, 1 ; rax = 1
	mov	rdi, 1 ; rdi = 1
	mov	rsi, msg ; rsi = msg
	mov	rdx, MSGLEN ; rdx = MSGLEN = 14
	syscall
	

;;; Sections
;;; .data 	- Global read/write data (non-executable) data has to be loaded into the program
;;; .rodata - Global read-only data (non-executable)
;;; .text   - Executable (read-only) code
;;; .bss    - Uninitialized global read/write data (non-executable) faster and dont care about what it contains on startup

;;; db Opcode
;;; Operands


;;; Label: Opcode Operanad

;;; move Dost, src ; Dest = src
;;; Copy Src into Dest( byte, word, dbowrd)
;;; Src and Dest must have the same Size
;;; CPU Registers | Global Variables that are stored like variables 16 of them and all qword sized
;;;		rax, rbx, rcx, rdx, rdi, rsi, rbp, rsp, r8 - r15

;;; Syscall request for the OS to do something
