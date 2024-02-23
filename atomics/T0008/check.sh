#!/bin/sh
echo "Instaling dependencies: "
apt update -qq; apt install -qq -y libcap2-bin
echo "Container running as root: "
id
echo "/proc/sys/kernel/core_pattern exposed in the container: "
cat /proc/sys/kernel/core_pattern 
echo "Capability to remount /proc: "
capsh --print | grep cap_sys_admin
