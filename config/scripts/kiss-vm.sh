#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

rpm-ostree install bash-completion libvirt libvirt-client virt-install virt-viewer qemu-kvm expect nmap-ncat tmux libguestfs-tools-c libvirt-nss dialog qemu-img udisks2 genisoimage iptables-nft ipcalc
cd /tmp

git clone https://github.com/tcler/kiss-vm-ns &&
    make -C kiss-vm-ns && vm prepare

rpm-ostree commit