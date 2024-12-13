.model small
.data
.code

main proc
    mov ah,1 
    int 21h
    mov cl,al
    
    mov dl,1
    add dl,48
    
    mov ah,2
    int 21h
    
    sub cl,17
    mov dl,cl
    
    mov ah,2
    int 21h
    
    Exit:
    mov ah,4ch
    int 21h
    main endp
end main