%include 'in_out.asm'
SECTION .data
div: DB 'Результат:  ',0
rem: DB 'Остаток от деления:   ',0
SECTION .text
GLOBAL _start
-start:

mov eax,5
mov ebx,2
mul ebx
add eax,3
xor edx,edx
mov ebx,3
div ebx
mov edi,eax
mov eax,div
Call iprintLF
mov eax,rem
Call sprint
mov eax,edx
Call sprintLF
Call quit  
