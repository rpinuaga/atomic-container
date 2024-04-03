#!/bin/sh
echo "Instaling dependencies: "
apt update -qq; apt install -qq -y libcap2-bin 
echo "Container running as root: "
id
echo "CAP_SYS_ADMIN capability: "
capsh --print | grep cap_sys_admin
echo "/proc/sys/fs/binfmt_misc/ exposed"
ls -al /proc/sys/fs/binfmt_misc/register
