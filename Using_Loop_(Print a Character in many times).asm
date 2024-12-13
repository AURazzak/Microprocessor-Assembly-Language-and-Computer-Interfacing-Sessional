.model small
.data
.code
main proc
    mov cl,10
    
    L1:
    mov dl,'a'
    
    mov ah,2
    int 21h
    
    loop L1
    
    Exit:
    mov ah,4ch
    int 21h
    main endp
end main



