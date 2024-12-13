
.model
.data
.code

main proc
    mov dl,'a'
    
    mov ah,2
    int 21h
    
    Exit:
    mov ah,4ch
    int 21h
    main endp
end main


