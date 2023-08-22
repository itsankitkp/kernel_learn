dd if=bootloader of=disk.img bs=512 count=1 conv=notrunc # save to disk image
qemu-system-i386 -machine q35 -fda disk.img # run qemu again
