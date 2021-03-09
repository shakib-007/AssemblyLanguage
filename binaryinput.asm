mov ah, 1
int 21h
sub al, 30h

mov cl, al
;mov ch, 0
xor bh, bh
xor ch, ch ; it means mov ch, 0


FOR:

    mov ah, 1
    int 21h
    
    cmp al, 31h
    je ALGO
    
    cmp al, 30h
    je ALGO
    
    jmp EXIT
    
    ALGO:
    sub al, 30h
    shl bh, 1
    or bh, al
    loop FOR
    

mov cx, 8
mov ah, 2

PRINT:

    rol bh, 1
    jc ONE
    jmp ZERO
    

ONE:
    mov dl, '1'
    int 21h
    loop PRINT
    jmp EXIT
    
    
ZERO:

    mov dl, '0'
    int 21h
    loop PRINT
    jmp EXIT
    
    
EXIT:
    mov ah, 4ch
    int 21h