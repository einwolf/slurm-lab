#!/bin/bash

virsh destroy sl1h1
virsh undefine --remove-all-storage sl1h1

virsh destroy sl1db1
virsh undefine --remove-all-storage sl1db1

virsh destroy sl1w1
virsh undefine --remove-all-storage sl1w1

virsh destroy sl1w2
virsh undefine --remove-all-storage sl1w2

virsh destroy sl1w3
virsh undefine --remove-all-storage sl1w3

virsh destroy sl1w4
virsh undefine --remove-all-storage sl1w4
