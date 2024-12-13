.model small
.data
.code    

main proc
 mov ah,1
 int 21h
 mov bl,al
 
 mov cl,13
 mov dl,cl 
 
 mov ah,2
 int 21h
 
 mov cl,10
 mov dl,cl
 
 mov ah,2
 int 21h
 
 mov dl,bl
 sub dl,32 
 
 mov ah,2
 int 21h
 Exit: 
 mov ah,4ch
 int 21h
 main endp
end main
