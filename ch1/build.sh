nasm -f bin bootloader.asm -o bootloader
nasm -f bin kernel.asm -o kernel
dd if=bootloader of=disk.img bs=512 count=1 conv=notrunc # save to disk image
dd if=kernel of=disk.img bs=512 count=1 seek=1
qemu-system-i386 -machine q35 -fda disk.img # run qemu again
