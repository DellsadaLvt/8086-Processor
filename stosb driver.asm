 
; example stosb instruction 
 
org 100h

mov  di, message         ; move the message: 'hello world' into DI register
mov  al, 'A'             ; move 'A' code ascii into AL register

stosb                    ; store 'A' code ascii into memory
stosb
stosb

 
 
message: db 'Hello world', 0

ret




