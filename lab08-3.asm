   call atoi
   mov [C],eax...
;----------------algorithm------------------
....
   mov ecx,[A] ;ecx = A
   mov [min],ecx ;min = A.

   Cmp ecx, [B] ; A&B
   Jl check_C ; if alb goto check_c
   mov ecx, [B]
   mov [min],ecx ;else min = B

check_C
   cmp ecx,[C]
   jl finish
   mov ecx,[C]
   mov [min],ecx

finish:
   mov eax,answer
   call sprint
