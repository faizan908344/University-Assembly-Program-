; THE USE OF JUMP AND CMP COMMAND IN THE PROGRAM
dosseg
.model small
.stack 100h
.data      
.code
main proc       
        
        mov al, 6    ; HERE WE STORE THE VALUE(6) IN THE AL REGISTER
        mov bl, 6    ; HERE WE STORE THE VALUE(6) IN THE BL REGISTER
        cmp al, bl   ; THEN WE COMPARE BOTH THE VALUES BY SUBTRACTING THE OPERANDS
        
        jz jumping   ; HERE IS THE JUMP CONDITION THAT IF THE COMPARISON OF AL AND BL IS ZERO(0) SO IT JUMPS TO THE PARTICULAR LABEL
               
                     ; IF THE JUMP CONDITION DOESNOT FULFILLED SO THESE INSTRUCTION WILL ACCESS
         mov dl, 6   ; HERE WE STORE THE VALUE(6) IN THE DL REGISTER
         add dl, 48  ; THEN ADJUST THE VALUE FROM ASCII TO DECIMAL
         mov ah, 2   ; FINALLY PRINT THE VALUE WHICH IS STORED IN DL REGISTER AND IT IS 6
         int 21h
        
         jumping:    ; IF THE JUMP CONDITION FULFILLS SO THEN THESE INSTRUCTION WILL ACCESS
         mov dl, 9   ; HERE WE STORE THE VALUE(9) IN DL REGISTER
         add dl, 48  ; THEN ADJUST THE VALUE FROM ASCII TO DECIMAL
         mov ah, 2   ; THEN FINALLY PRINT THE VALUE WHICH IS STORED IN DL REGISTER AND IT IS 9.
         int 21h
         
         mov ah, 4ch
         int 21h
        
main endp
end main