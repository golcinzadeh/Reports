%include 'in_out'
SECTION .data
Msg: DB 'Введите X ',0
rem: DB 'выражение = : ',0
SECTION .bss
x:  RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
Call sprintLF
mov ecx, x
mov edx, 80
Call sread
mov eax,x;  Вызов подпрограммы преобразования
call atoi ; ASCII кода в число, `eax=x`

xor edx,edx
mov ebx,2
div ebx
add eax,8
mov ebx,3
mul ebx

mov ebx,eax
mov eax,rem
call sprint
mov eax,edx
call iprintLF
call quit
