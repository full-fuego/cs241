;;; 
;;; hello.s
;;; Prints hello, world
;;; 

;;; For global read and write data (global variables)
section .data







;;; Sections
;;; .data 	- Global read/write data (non-executable) data has to be loaded into the program
;;; .rodata - Global read-only data (non-executable)
;;; .text   - Executable (read-only) code
;;; .bss    - Uninitialized global read/write data (non-executable) faster and dont care about what it contains on startup
