msg: DB 'сообщение NO 3' ,0
SECTION .text
GLOBAL _start

_start:
Jump _label2
_label1:

mov eax, msg1 ; Вывод на экран строки
call sprintLF ; 'Сообщение NO 1'
_label2:

mov eax, msg2 ; Вывод на экран строки
call sprintLF ; 'Сообщение NO 2'

_label3:
mov eax, msg3 ; Вывод на экран строки
call sprintLF ; 'Сообщение NO 3'

_end:
Call quit ; Вызов подпрограммы завершения
