
org 100h

; LODSB instruction 


mov si, message ; move the message into SI register
lodsb           ; load the  ascii code of 'H' character.
lodsb           ; load the  ascii code of 'e' character.

message: db 'Hello world',0


ret