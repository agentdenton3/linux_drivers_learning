
# x86_64
# qemu-system-x86_64 -kernel bzImage -boot c -m 2048M -hda buildroot/output/images/rootfs.ext4 \
# -append "root=/dev/sda rw console=ttyS0,115200 acpi=off nokaslr" -serial stdio -display none

# armv6
# qemu-system-arm -M versatilepb -m 256M -kernel linux/arch/arm/boot/zImage 
# -dtb linux/arch/arm/boot/dts/versatile-ab.dtb -hda buildroot/output/images/rootfs.ext4 
# -append "root=/dev/ram rdinit=/hello console=ttyAMA0" -serial stdio -display none

while getopts "r" opt; do
    case $opt in
        r)
            # x86_64
            qemu-system-x86_64 -kernel linux/arch/x86_64/boot/bzImage -hda /dev/zero \
                -append "console=ttyS0,115200" -serial stdio -display none
            ;;
        \?)
            echo "Invalid argument"
            ;;
    esac
done
