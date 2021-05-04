
org 100h


jmp main

stack: 

    push 0xffff                    ; the SP and IP register changed   
                                   ; in the Emulate, we can see that the SP register  downward 
                                   ; and we push the value to the stack
    
                                  
    pop ax                         ; the SP return from 0xfffc to 0xfffe and the value of AX register is 0xffff
ret  
    
    
    
main:
    
    call subroutine                ; call use the stack to store return address 
    mov ax, 0x30
    
    ret
            
            
            
subroutine:
                     
    mov ax, 0x20
    ret




