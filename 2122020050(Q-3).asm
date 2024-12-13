.model small
.data
msg1 db "Welcome$"
msg2 db "Today is your lab exam$"
msg3 db "Best of luck!$"  

.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov ah, 1
    int 21h
    mov bl, al
    
    mov dl, 13
    mov ah, 2
    int 21h
    mov dl, 10
    mov ah,2
    int 21h
         
    cmp bl, "1"
    je L1  
    
    cmp bl, "2"
    je L2
    
    cmp bl, "3"
    je L3 
    
    L1:
    lea dx,msg1
    mov ah, 9
    int 21h
    jmp Exit  
    
    L2:
    lea dx,msg2
    mov ah, 9
    int 21h
    jmp Exit
    
    L3:
    lea dx,msg3
    mov ah, 9
    int 21h
    jmp Exit
     
     Exit:
     mov ah, 4ch
     int 21h
     main endp
end main