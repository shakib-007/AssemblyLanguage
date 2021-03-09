.model small
.stack 100h
.data
.code
main proc
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,2
    cmp bh,'a'
    jge if
    jmp else
    
 if:
   cmp bh,'z'
   jle print
   
 print:
    mov dl,'A'
    int 21h
    jmp exit
    
 else:
    mov dl,'S'
    int 21h
    
 exit:
    mov ah,4ch
    int 21h
    
    main endp
end main