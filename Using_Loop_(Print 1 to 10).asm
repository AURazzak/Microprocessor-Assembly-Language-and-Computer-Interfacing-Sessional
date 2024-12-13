.model small
.data
.code
main proc
    mov cl,10
    mov dl,48
    
    L1:
    mov ah,2
    int 21h 
    
    add dl,1
    
    loop L1
    
    Exit:
    mov ah,4ch
    int 21h
    main endp
end main