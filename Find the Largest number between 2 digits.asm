.model small
.data
.code

main proc
    mov ah,1
    int 21h   
    mov bl,al
    
    mov ah,1
    int 21h 
    mov bh,al
    
    cmp bl,bh
    jnp L2
    
    mov dl,bl
    
    mov ah,2
    int 21h
    jmp exit
    
    L2:
    mov dl,bh
    
    mov ah,2
    int 21h  
    
    Exit:
    mov ah,4ch
    int 21h
    main endp
end main

