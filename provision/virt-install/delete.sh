#!/bin/bash

export VIRSH_DEFAULT_CONNECT_URI=qemu:///system

virsh destroy slurm1-head1
virsh undefine --remove-all-storage slurm1-head1

virsh destroy slurm1-db1
virsh undefine --remove-all-storage slurm1-db1

virsh destroy slurm1-worker1
virsh undefine --remove-all-storage slurm1-worker1

virsh destroy slurm1-worker2
virsh undefine --remove-all-storage slurm1-worker2

virsh destroy slurm1-worker3
virsh undefine --remove-all-storage slurm1-worker3

virsh destroy slurm1-worker4
virsh undefine --remove-all-storage slurm1-worker4

virsh destroy slurm1-gpu1
virsh undefine --remove-all-storage slurm1-gpu1
