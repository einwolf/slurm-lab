#!/bin/bash

export LIBVIRT_DEFAULT_URI=qemu:///system

virt-install --osinfo almalinux9 --name slurm1-head1 --vcpus 2 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1isos/AlmaLinux-9.5-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/slurm1-head1-ks.cfg" --extra-args="inst.ks=file:/slurm1-head1-ks.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole

virt-install --osinfo almalinux9 --name slurm1-db1 --vcpus 4 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1isos/AlmaLinux-9.5-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/slurm1-db1-ks.cfg" --extra-args="inst.ks=file:/slurm1-db1-ks.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole

virt-install --osinfo almalinux9 --name slurm1-worker1 --vcpus 4 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1isos/AlmaLinux-9.5-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/slurm1-worker1-ks.cfg" --extra-args="inst.ks=file:/slurm1-worker1-ks.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole

virt-install --osinfo almalinux9 --name slurm1-worker2 --vcpus 4 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1isos/AlmaLinux-9.5-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/slurm1-worker2-ks.cfg" --extra-args="inst.ks=file:/slurm1-worker2-ks.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole

virt-install --osinfo almalinux9 --name slurm1-worker3 --vcpus 4 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1isos/AlmaLinux-9.5-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/slurm1-worker3-ks.cfg" --extra-args="inst.ks=file:/slurm1-worker3-ks.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole

virt-install --osinfo almalinux9 --name slurm1-worker4 --vcpus 4 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1isos/AlmaLinux-9.5-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/slurm1-worker4-ks.cfg" --extra-args="inst.ks=file:/slurm1-worker4-ks.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole

virt-install --osinfo almalinux9 --name slurm1-gpu1 --vcpus 4 --memory 8192 --disk pool=d1disks,size=200 --network=bridge:br0 --location "/data1/libvirt/d1isos/AlmaLinux-9.5-x86_64-dvd.iso" --initrd-inject "/data1/kickstarts/slurm1-gpu1-ks.cfg" --extra-args="inst.ks=file:/slurm1-gpu1-ks.cfg console=tty0 console=ttyS0,115200n8" --noautoconsole
