 .stack 100h 
 .data
   msg1 db 'enter input:$'
   msg2 db 'output:$'
   msg3 db 0dh,0ah,'$'

.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov cx,4
    
 input:
    mov ah,1
    int 21h
    sub al,30h
    mov bl,al
    push bx
    
    loop input
    
    mov cx,4
    mov bx,0
    
    
  for:
    shl bx,4
    pop ax
    or bx,ax
    
    
    loop for
     
    mov ah,9
    lea dx,msg3
    int 21h
    
    lea dx,msg2
    int 21h
    
    mov cx,4
    mov ah,2  
    
  output:
    
    mov dl,bl
    shr bx,4 
    
    and dl,00001111b
    add dl,30h
    
    int 21h
    
    loop output
    
    
  exit:
    mov ah,4ch
    int 21h  
    
    
    main endp
  


end main