
org 100h


jmp use_Subroutine   


register_lecture:   ; video 6
    mov ah, 07h
    mov al, 'T'         
    mov ax, 0xffff  
    mov al, 0eh  
    
    mov bx, 0xffff
    mov bl, 0dh
    mov bh, 0ah
    
    int 10h      

                    ; SS, DS, ES, CS is the segment register  
                    
                    ; CS is code segment which store the address where store the code of the user's program
                    
                    ; ES is the extra segment is store addition address 
                    
                    ; SS is the stack segment is store the stack's address 
                    
                    ; SP is stack pointer
                     
                    ; DS is data segment which store the address of the variables
                    
                    ; IP is program counter which instruction running in memory currently   
                    
                    ; the IP value constain the value current address you're executing in memory
                    ; use the IP register to know which instruction to load from Ram                    
                                          
segment_register_lecture:        ; video 7 
                                 ; segmentation register is store the address
    mov ax, 0300h 
    mov ds, ax                   ; change the data segment point to 0300h
    mov [0xffee], 0x31            ; the 0x30 is in the address is 0300:ff in Ramdom Access Memory       
    ret                                          

program_counter:
    jmp                                           
                    
                    
main: 

    jmp 0x7c0:0xff                 ; 0x7c0 is stored in the CS register and the 0xff is stored in the IP register  
                                   ; transfer 0x7c0 to decimal, then multiply with 16 then change the result from decimal to hex and then plus with 0xff
                                   ; the result is the physical address the we are jump and the processor will read the value from the address
                                   ; and that is our instruction 
                                   ; it's going to execute      
    call segment_register_lecture                  

ret   


stack: 

    push 0xffff                    ; the SP and IP register changed   
                                   ; in the Emulate, we can see that the SP register downward and we push the value to the stack
    mov bx, 03dch  
    mov ss, bx                     ; change the value of SS register
    push 0xabcd                               
    pop ax                         ; the SP return from 0xfffc to 0xfffe and the AX register is 0xffff
ret  

subroutine:
    mov ax, 0x0700
    mov ds, ax
    mov [0xfffc], 0xfeed 
    ret

use_Subroutine:
    call subroutine                 ; call use the stack to store return address
    mov ah, 0xff
ret




