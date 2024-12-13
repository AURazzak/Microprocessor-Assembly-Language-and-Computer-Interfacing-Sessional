
.model small
 .data
 .code
 main proc
    
    mov cl,26
    mov dl,'A'
    L1:
    mov ah,2
    int 21h
    
    add dl,1
    Loop L1
    
    
    exit:
    mov ah,4ch
    main endp
 end main