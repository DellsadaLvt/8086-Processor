org 100h

jmp signed_div_byte
 
 
add_subtraction:
        mov al, 20
        add al, 10
        add al, -25
        sub al, 5 
        
        
unsigned_multiply_byte:        
        mov al, 20
        mov bl, 20
        mul bl                  ; the algorithm
                                ; with one byte:
                                            ; ax = ax * operand                                
                                             
unsigned_multiply_word:         ; with one word:
        mov ax, 5550
        mov bx, 20                          ; ( dx ax } = ax * operand                  
        mul bx         
        
signed_multiply:
        mov al, -2
        mov bl, -4
        imul bl    
        
unsigned_div_byte:
        mov ax, 23               ; al = ax / operand
        mov bl, 4
        div bl                           ; ah =  remainder (modulus}   
                                                       
unsigned_div_word:
        mov dx, 0x0a
        mov ax, 0xffff
        mov bx, 400
        div bx  
        
signed_div_byte:
                                 ; al = ax / operand
                                 ; ah = remainder ( modulus}
                                 
        mov ax, -203
        mov bl, 4
        idiv bl                                     
        
ret      




