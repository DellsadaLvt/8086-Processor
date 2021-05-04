
org 100h

mov al, 5
mov bl, 6
cmp al, bl

ja _jump_above

jb _jump_below

jne not_equal_q 

je equal  

jbe

jmp not_equal



equal:
    ; instructions 
    mov ah, 0eh

not_equal: 
    ; instructions   
    mov ah, 0eh  
    
not_equal_q:
    mov ah, 0eh 
    
    
_jump_above:
    mov ah, 0eh 

_jump_below:
    mov ah, 0eh
ret




