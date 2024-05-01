#! /bin/bash

set -ouex pipefail

sed -i 's/Fedora Linux/Ostree Test/g' /etc/os-release

KERNEL_VERSION=$(rpm -q kernel --qf "%{VERSION}-%{RELEASE}.%{ARCH}")
dracut --no-hostonly --kver $KERNEL_VERSION --reproducible -v --add ostree -f /lib/modules/$KERNEL_VERSION/initramfs.img

chmod 600 /lib/modules/$KERNEL_VERSION/initramfs.img