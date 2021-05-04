
org 100h      


                                                                                  
                                                                                     
;Segmentation                ; segmentation register is used to store the address  

mov [0xff], 0x33


mov ax, 0x300 
mov ds, ax                   ; change the data segment point to 0300h
mov [0xffee], 0x33           ; the 0x30 is in the address is 0300:ff in Ramdom Access Memory       
                                         
    
    
    
    
;how jmp instruction work  

jmp _test
       
                     

jmp 0x7c0:0xff                     ; 0x7c0 is stored in the CS register and the 0xff is stored in the IP register  
                                   ; transfer 0x7c0 to decimal, then multiply with 16 then change the result from decimal to hex and then plus with 0xff
                                   ; the result is the physical address the we are jump and the processor will read the value from the address
                                   ; and that is the position of the instruction 
                                   ; and then it's going to execute  the instruction    
    
_test:
    mov ax, 0x33



