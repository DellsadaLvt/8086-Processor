
org 100h 




mov [0x00], 0x30      ; move the 0x30 to the address 0x30 

mov ax, 0x0300
mov ss, ax
mov ax, 0x3000
mov ds, ax

; another way
mov bx, 0xffed
mov [bx], 0x33        ; if use the ax instead bx register, it will error because the hardware of the processor    

mov byte [bx], 0xcd   ; store 0xcd in the address of ds register
mov word [bx], 0xcdab

mov ax, [bx]
mov ax, 0xffff
mov al, [bx]

ret 



    






