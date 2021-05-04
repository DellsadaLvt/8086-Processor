
org 100h

mov al, 5
mov bl, 5
cmp al, bl       ; the flag are set according the result
                 ; in this case: the value of al and bl equal, so the ZF = 1
                 
je _equal        ; if the ZF = 1, jump to the label
jne _not_equal        ; jump not equal
                 ; the algorithm: if ZF = 0 then jump  

ja _jump_above   ; if the CF = 0 and ZF = 0 then jump
jb _jump_below   ; if the CF = 1 then jump +{ in the CMP instruction above: cmp al, bl; 
                        ; if the value of AL smaller then BL so the CF is 0               
jae _jump_above_or_equal       ; if  CF = 0 then jump
jbe _jump_below_or_equal        ; if CF = 1 OR ZF = 1 then jump

_equal:
    mov ah, 0eh
    mov al, 'A'
    int 10h    
    
_not_equal:
    mov ax, 0xffff
    jb _jump_below 
    
_jump_above:
    mov ax, 0xfefa  
    
_jump_below:
    mov ax, 0xffee  
    

ret




