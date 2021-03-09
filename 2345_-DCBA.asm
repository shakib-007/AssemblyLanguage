 .stack 100h 
 .data
   

.code

main proc 
    
    
    mov cx,4
    
 input:
    mov ah,1
    int 21h
    cmp al,41h
    jge exit
    cmp al,0dh
    je exit
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
    
    xor bx,1111111111111111b
     
   
    
    mov cx,4
    mov ah,2  
    
  output:
    
    mov dl,bl
    shr bx,4 
    
    and dl,00001111b
    add dl,37h
    
    int 21h
    
    loop output
    
    
  exit:
    mov ah,4ch
    int 21h  
    
    
    main endp
  


end main