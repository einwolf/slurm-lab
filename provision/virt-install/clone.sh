#!/bin/bash

virt-install --osinfo almalinux9 --name al9-master-node --vcpus 4 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1disks/AlmaLinux-9.3-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/al9-master-node.cfg" --extra-args="inst.ks=file:/al9-master-node.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole --wait 0

virt-clone --replace --original al9-master-node --name sl1h1 --file /data1/libvirt/d1disks/sl1h1.qcow2
virt-clone --replace --original al9-master-node --name sl1w1 --file /data1/libvirt/d1disks/sl1w1.qcow2
virt-clone --replace --original al9-master-node --name sl1w2 --file /data1/libvirt/d1disks/sl1w2.qcow2
virt-clone --replace --original al9-master-node --name sl1w3 --file /data1/libvirt/d1disks/sl1w3.qcow2
virt-clone --replace --original al9-master-node --name sl1w4 --file /data1/libvirt/d1disks/sl1w4.qcow2
