MOV AL, 66
MOV AH, 0x0E ;Tell BIOS that we need to print one charater on screen.
MOV BH, 0x00 ;Page no.
MOV BL, 0x07 ;Text attribute 0x07 is lightgrey font on black background
INT 0x10
JMP $
