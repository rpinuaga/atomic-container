#!/bin/sh
apt update; apt install -y libcap2-bin
echo "Container running as root:"
id
echo "CAP_SYS_RAWIO capability: "
capsh --print | grep -e cap_sys_rawio
echo "/dev/mem exposed: "
ls -al /dev/mem 
