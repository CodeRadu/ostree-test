#! /bin/bash

set -ouex pipefail

sed -i 's/Fedora Linux/Ostree Test/g' /etc/os-release

rpm-ostree initramfs --enable # Enable local initramfs generation