;PROGRAM FOR ADDING FOUR NUMBERS AND PRINT THE RESULT

dosseg
.model small
.stack 100h
.data
.code
main proc

mov al, 1    ; THIS IS THE FIRST NUMBER
mov bl, 2    ; THIS IS THE SECOND NUMBER  
mov bh, 3    ; THIS IS THE THIRD NUMBER
mov cl, 2    ; THIS IS THE FOURTH NUMBER
add bh, cl   ; HERE WE ADD FIRST TWO NUMBERS  
add bl, bh   ; THEN ADD THE SUM OF TWO NUMBERS IN THIRD NUMBER 
add al, bl   ; THEN FINALLY WE ADD THE SUM OF THREE NUMBERS IN THE FOURTH NUMBER.
add al, 48   ; THEN WE ADD ASSCI CODE OF ZERO WHICH IS 48 
mov dl, al
mov ah, 2    ; THEN FINALLY WE PRINT THE RESULT OF THE ADDITION. 
int 21h

mov ah, 4ch
int 21h
main endp
end main

