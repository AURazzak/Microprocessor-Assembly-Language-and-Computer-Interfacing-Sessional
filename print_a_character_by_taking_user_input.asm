.model small
.data
.code

main proc
    mov ah,1
    int 21h
    
    mov dl,al
    
    mov ah,2
    int 21h
    
    Exit:
    mov ah,4ch
    int 21h
    main endp
end main



