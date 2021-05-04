

org 100h  



;jmp 0xff:0xee                 ; this code change the value of the CS and IP register 
;jmp 0x0711:0x000e  


jmp section_2 




message: db 'Hello World'
 
       
       
       
section_1:
    mov ah, 0eh
    mov al, 'T'
    
    int 10h                    ; interrupts: interrupts vector table stored in the stack 
    
                               ; when we call interrupts, processor will into vector table
                                
                               ; and find the offset 10h ( example: with offset 00h present by four bytes, start in 0x00 in the vector table 
                                                                    ; or you can understand that with four bytes make up an address of one interrupts>    
                                                                    
                               ; so the offset 10h in the address 0000:0040                                 
                               ; then they will take value in this address and jump to the code interrupts  
                                                              
                               ; for example with the int 10h the address if the interrupts is f400:0190                                  
                               ; this address is take from interrupts vector table at 0000:0000 of RAM
    
    ret




section_2:
    mov si, message 
    push ds                    ; push DS { 0700 } to stack 
    mov ax, 0
    mov ds, ax   
    mov [0000], handle_int1    ; first two byte is the offset corresponding the label of the interrupts code
    mov [0002], cs
    pop ds 
    
    int 0h
    
    ret
    



handle_int1:
     mov ah, 0eh 
     
._loop:
    lodsb
    cmp al, 0xb4
    je done
    int 10h
    jmp ._loop
    
done:
    iret 