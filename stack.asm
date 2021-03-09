.stack 100h


.code 
main proc
   
   mov bx,41h
   mov cx,42h
   mov dx,43h
   
   push bx ;sp=0100 indicates empty
   
   push cx ;sp=00FE decremented by 2,mov value
   push dx  ;sp=00FC ,aftewards before termination sp=00FA
   
   pop dx
   mov ah,2
   int 21h
   
   pop dx
   int 21h
   
   pop dx
   int 21h 
    
    main endp
end main