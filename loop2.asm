.stack 100h
.data 
.code

main proc
    mov ah,1
    int 21h
    mov bh,al
    
    ;cmp bh,' '
    ;je EXIT            
    WHILE:
       mov ah,2
       mov dl,0dh
       int 21h
       
       mov dl,0ah
       int 21h  
       
       mov dl,bh
       int 21h
       
       mov ah,1
       int 21h  
       
       mov bh,al
               
       cmp bh,' '        
       jne WHILE
           
        
    EXIT: 
        mov ah,4ch
        int 21h    
    
    main endp
end main