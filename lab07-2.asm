%include 'in_out.asm'
SECTION .text
GLOBAL _start
-start:
mov eax,'6'
mov ebx,'4'
Add eax,ebx
Call sprintLF
Call quit 
