
org 100h  

jmp store_ds

; load byte at DS:[SI] into AL. update SI
; Algorithm
    ; AL = DS:[SI]
    ; if   DF = 0 then
        ; SI = SI + 1
    ; Else
        ; SI = SI - 1
        
; Load a byte from memory and then increase or decrease the SI register
; DF is the flat

load_ds:
        mov si, message     ; move the message into the SI register
        lodsb
                    

; store byte in AL into ES:[DI]. Update DI
; Algorithm:
    ; ES:[DI] = AL
    ; If DF = 0 
        ;DI = DI + 1
    ; else 
        ;DI = DI - 1
store_ds:
        mov al, 'A'
        mov di, message     ; move the message into the DI register                       
        stosb
        stosb 

ret 

message: db 'Hello World', 0      ; this mean that Hello World0


; THE RESOURCE: RALF BROWN'S INTERRUPTS LIST IN THE ' WWW.CTYME.COM/BROWN.HTM
; DOT FUNCTION CODE: 




