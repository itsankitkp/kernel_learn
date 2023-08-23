nasm -f bin bootloader.asm -o bootloader
qemu-system-i386 bootloader
