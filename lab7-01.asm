%include 'in_out.asm'
SECTION .bss
buf1: RECB 80
SECTION .text
GLOBAL _start
-start:
mov eax,'6'
mov ebx,'4'
Add eax,ebx
mov [buf1],eax
mov eax,buf1
Call sprintLF
Call quit 
