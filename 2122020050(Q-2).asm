.model small
.data 
.code
main proc 
    
    mov ah, 1
    int 21h
    mov bl, al
    
    mov dl, 13
    mov ah, 2
    int 21h
    mov dl, 10
    mov ah, 2
    int 21h
    
    mov ah, 1
    int 21h
    mov bh, al
    
    mov dl, 13
    mov ah, 2
    int 21h
    mov dl, 10
    mov ah, 2
    int 21h
    
    
    mov ah, 1
    int 21h
    mov cl, al 
    
   
    mov dl, 13
    mov ah, 2
    int 21h
    mov dl, 10
    mov ah, 2
    int 21h
    
    
    cmp bl, bh
    jng L1 
    
    cmp bh, cl
    jg L2
    
    mov dl, bh
    mov ah, 2
    int 21h
    jmp Exit
      
    L1:
    cmp bl, cl
    jg L2
 
    mov dl, bl
    mov ah, 2
    int 21h
    jmp Exit  
    
    L2:
     
    mov dl, cl
    mov ah, 2
    int 21h
    jmp Exit 
    
    Exit:
    mov ah, 4ch
    int 21h
    main endp
end main