
org 100h  


add_instruction:
    mov al, 0x33
    add al, 3  
    
subtraction_instruction:
    mov bl, 0x33
    sub bl, 3


div_signed:
    mov ax, -203
    mov bl, 4
    idiv bl 

div_unsigned:

    ; a word
    mov dx , 0x0a
    mov ax , 0xffff
    mov bx , 400
    
    div bx    ; ==> 0affff / 400
     
    ; a byte
    mov al, 10
    mov bl, 3
    div bl 


signed_multiply:
    mov al, -2
    mov bl, -4
    imul bl  
  
unsigned_multiply: 

    ;work with byte 
    mov al, 3
    mov bl, 3
    mul bl   ; ax = al  * bl 
    
    ;work with word
    mov ax, 0xffff
    mov bx, 0xff
    mul bx  
    
      
    

    
  



ret




