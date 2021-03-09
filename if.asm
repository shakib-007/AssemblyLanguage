.model small
.stack 100h
.data  
.code 

main proc 
    
    mov bh,35h
    mov ah,2
    cmp bh,30h
    
    jge IF
    jmp ELSE
    
 IF:
    cmp bh,35h
    je IF_IF
    jmp IF_ELSE
    
 IF_IF: 
 
      mov dl,'5'
      int 21h 
      jmp EXIT  
      
 IF_ELSE:  
 
      mov dl,'9'
      int 21h   
      jmp EXIT  
      
  ELSE: 
  
      mov dl,'-'
      int 21h
      
  EXIT:
  
     mov ah,4ch
     int 21h
    
    
    main endp
end main
    