
org 100h

jmp in_hardware            
                                ; out the text to port 130
                                ; press Emulate, then click  Virtal Devices and choose Printer.exe
out_hardware:                   ; once press run, it the tab of Virtal Devices appear one 'A'
    mov al, 'A'
    out 130 , al  

  
				                ; click Virtal Devices and choose Simple.exe
				                ; and we use the port 100   
in_hardware:                
    in al,   110              

ret




