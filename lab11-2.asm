%include 'in_out.asm'
SECTION .data
   msg:       DB 'Input your name:  ',0
   Filename: DB 'name.txt',0
   my_name: DB "My name is:',0
SECTION .bss
   X:  RESB 80
SECTION .text
   GLOBAL _start:

_start:

    mov eax,msg
    call sprint

    mov ecx,X
    mov edx,80
    Call sread

    mov ecx, 0777o
    mov ebx, filename
    mov eax, 8
    int 80h

    mov eax, my_name
    Call seen
