%include 'in_out'
SECTION .data
Msg: DB 'Введите NO. Студенческого билета:  ',0
rem: DB 'Ваш вариант:   ',0
SECTION .bss
x:  RESB
SECTION .text
GLOBAL _start
_start:
mov eax, msg
Call sprintLF
mov ecx, x
movedx, 80
Call sread
mov eax,x;  Вызов подпрограммы преобразования
call atoi ; ASCII кода в число, `eax=x`
xor edx,edx
mov ebx,20
div ebx
inc edx
mov eax,rem
call sprint
mov eax,edx
call iprintLF
call quit
