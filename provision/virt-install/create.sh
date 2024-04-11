#!/bin/bash

virt-install --osinfo almalinux9 --name sl1h1 --vcpus 2 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1disks/AlmaLinux-9.3-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/sl1.cfg" --extra-args="inst.ks=file:/sl1.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole --wait 0

virt-install --osinfo almalinux9 --name sl1w1 --vcpus 4 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1disks/AlmaLinux-9.3-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/sl1.cfg" --extra-args="inst.ks=file:/sl1.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole --wait 0

virt-install --osinfo almalinux9 --name sl1w2 --vcpus 4 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1disks/AlmaLinux-9.3-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/sl1.cfg" --extra-args="inst.ks=file:/sl1.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole --wait 0

virt-install --osinfo almalinux9 --name sl1w3 --vcpus 4 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1disks/AlmaLinux-9.3-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/sl1.cfg" --extra-args="inst.ks=file:/sl1.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole --wait 0

virt-install --osinfo almalinux9 --name sl1w4 --vcpus 4 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1disks/AlmaLinux-9.3-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/sl1.cfg" --extra-args="inst.ks=file:/sl1.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole --wait 0
