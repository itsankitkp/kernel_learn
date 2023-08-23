BITS 16
ORG 0x7c00

MOV AL, 65
MOV AH, 0x0E ;Tell BIOS that we need to print one charater on screen.
MOV BH, 0x00 ;Page no.
MOV BL, 0x07 ;Text attribute 0x07 is lightgrey font on black background
INT 0x10
JMP $

TIMES 510 - ($ - $$) db 0
DW 0xAA55 ; Boot Signiture
