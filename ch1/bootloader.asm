BITS 16
ORG 0x7c00

mov ax, 0x50 ; Set up the data segment (es) to 0x5000
mov es, ax
xor bx, bx
mov al, 2 ; read 2 sector
mov ch, 0 ; track 0
mov cl, 2 ; sector to read (The second sector)
mov dh, 0 ; head number
mov dl, 0 ; drive number
mov ah, 0x02 ; read sectors from disk
int 0x13 ; call the BIOS routine
jmp 0x50:0x0 ; jump and execute the sector!

TIMES 510 - ($ - $$) db 0
DW 0xAA55 ; Boot Signiture
