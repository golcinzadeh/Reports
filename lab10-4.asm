SECTION . text  
global _start  
_start: mov eax, fx  
call sprintLF  
pop ecx  
pop edx  
sub ecx,1  
mov esi,0  
next: 
cmp ecx, 0h  
jz _end  
pop eax  
call atoi  
call calc  
add esi,eax 

loop next  

_end: 
mov eax, msg  
call sprint  
mov eax, esi  
call iprintLF  
call quit  

calc: 
add eax,1 
mov ebx,7  
mul ebx 
ret
