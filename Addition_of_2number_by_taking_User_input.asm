.model small
.code
main proc 
    
 mov ah,1
 int 21h 
 mov bl,al 
 
 mov ah,1
 int 21h 
 mov cl,al 
 
 add bl,cl 
 mov dl,bl
 sub dl,48
 
 mov ah,2
 int 21h
 
 Exit:
 mov ah,4ch
 int 21h 
 main endp
end main


