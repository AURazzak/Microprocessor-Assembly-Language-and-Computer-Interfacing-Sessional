.model
.data    

var1 db ?
var2 db ? 

smg1 db 'Enter first number: $'
smg2 db 'Enter second number: $'
smg3 db 'Result: $'   

.code

main proc
 mov ax,@data
 mov ds,ax 
 
lea dx,smg1
 mov ah,9
 int 21h
 
mov ah,1
int 21h
mov var1,al

mov dl,10
mov ah,2
int 21h   

mov dl,13
mov ah,2
int 21h   

lea dx,smg2
 mov ah,9
 int 21h  
 
mov ah,1
int 21h
mov var2,al 

mov dl,10
mov ah,2
int 21h  

mov dl,13
mov ah,2
int 21h   

lea dx,smg3
mov ah,9
int 21h 

mov dl,var1
add dl,var2 

sub dl,48  
 
mov ah,2
int 21h   

Exit:
 mov ah,4ch
 int 21h
 main endp
end main



