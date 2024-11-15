#!/bin/sh
echo "Instaling dependencies: "
apt update -qq; apt install -qq -y libcap2-bin util-linux
echo "Container running as root: "
id
echo "CAP_SYS_ADMIN capability: "
capsh --print | grep cap_sys_admin
echo "Block device exposed in the container: "
lsblk | grep part
