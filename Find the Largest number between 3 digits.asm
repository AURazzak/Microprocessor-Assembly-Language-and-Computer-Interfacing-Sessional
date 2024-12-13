.model small
.data
.code   

main proc
 mov ah, 1
 int 21h
 mov bl,al
 
 mov ah, 1
 int 21h
 mov bh,al
 
 mov ah, 1
 int 21h
 mov cl,al
 
 cmp bl,bh
 jng L1 
 
 cmp bl,cl 
 jng L2 
 
 mov dl,bl 
 mov ah,2
 int 21h
 jmp exit
 
 L1:
 cmp bh,cl 
 jng L3 
 
 mov dl,bh
 mov ah,2
 int 21h
 jmp exit
 
 L2:
 mov dl,cl
 mov ah,2
 int 21h
 jmp exit
 
 L3:
 mov dl,cl 
 mov ah,2
 int 21h
 jmp exit
 
 Exit:
 mov ah,4ch
 int 21h
 main endp
end main