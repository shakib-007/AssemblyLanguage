.model small
.stack 100h
.data
  msg1 db 'input:$'
  msg2 db 'output:$'
  newline db 0dh,0ah,'$'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,9
    lea dx,newline
    int 21h
    
    lea dx,msg2
    int 21h
    
    mov cx,8
    jcxz exit
    
for:
    mov ah,2
    shl bh,1
    jc one
    jmp zero
    
one:
    mov dl,'1'
    int 21h
    loop for
    jmp exit
    
zero:
    mov dl,'0'
    int 21h
    loop for
    
exit:
    mov ah,4ch
    int 21h
    
    main endp
end main