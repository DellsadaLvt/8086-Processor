
org 100h
          

jmp main

message: db 'Hello World', 0



print:
    mov ah, 0eh
    
._loop:    
    lodsb
    lodsb 
    int 10h
    cmp al, 0
    je done
    jmp ._loop 
    
done:    
    ret
                   
          
main:          
    mov si, message
    call print
    
ret


               

