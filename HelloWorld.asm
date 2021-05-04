
org 100h 

                    
jmp main                             ; Jump to main label                                         
                                     ; Jump is basicly chage the Program counter register.
                                     
                                     

message:  db  'Hello World', 0       ; db is data bytes allows specific a munber of characters
                                                                                               
                                                                                               

print:
    ;mov si, messgse                 ; move the message label to si 
    mov ah, 0eh                      ; must move 0eh into the AH register, so we can use 'int 10h' to print the screen
    
    
._loop:
    lodsb                            ; lodsb is the load  the first character of the message 'H' and then increment the si byte, in the next the 'E' will load    
                                     ; it will read the character / one byte / and load into AL register
    ;cmp is compare
    cmp al, 0                        ; it compare AL register with 0, when it equal 0, it will go to done label     
    je  done                         ; jump equal                                                                                                                          
    int 10h                          ; interrups, it say the BIOS print the character
    jmp ._loop    
    
    
done:                                  

    ret                              ; ret is return  
    
;main is the label
main:

    ;mov ah, 0eh
    ;mov al, 't'
    ;int 10h     
    mov si, message                  ;move the message label to si  
    call print
ret




