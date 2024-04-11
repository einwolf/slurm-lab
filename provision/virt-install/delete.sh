#!/bin/bash

virsh destroy sl1
virsh undefine --remove-all-storage sl1

virsh destroy sl2
virsh undefine --remove-all-storage sl2

virsh destroy sl3
virsh undefine --remove-all-storage sl3

virsh destroy sl4
virsh undefine --remove-all-storage sl4
