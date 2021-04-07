	BITS 16
segment .data


start:
  mov ax, 07C0h    
  add ax, 288    
  mov ss, ax
  mov sp, 4096

  mov ax, 07C0h    
  mov ds, ax


  mov si, mensaje 
  call imprimeMensaje  

  jmp $    


  mensaje db "⣿⣿⣿⣿⣿⣿⣿⣿ I hate assambly ⣿⣿⣿⣿⣿⣿⣿⣿⡇", 0


imprimeMensaje:     
  mov ah, 0Eh   
  
.loop:
  lodsb      
  cmp al, 0
  je .fin    
  int 10h     
  jmp .loop

.fin:
  ret


  times 510-($-$$) db 0  
  dw 0xAA55  
