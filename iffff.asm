.model small
.stack 100h
.data
  msg1 db 'smaller than zero.$'
  msg2 db 'bigger than zero.$'
  
.code
main proc 
    
   mov ax,@data
   mov ds,ax 
   mov bh,35h
   mov ch,34h 
   mov ah,9

   xchg bh,ch 
   
   sub bh,ch 
   
   cmp bh,0 ;255,0 
   jb if
   jmp else
   
   if:
      lea dx,msg1
      int 21h
      jmp exit
      
    else:
       lea dx,msg2
       int 21h
    
    exit:
      mov ah,4ch
      int 21h
   

main endp
end main