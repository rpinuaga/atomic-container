#!/bin/sh
echo "Instaling dependencies: "
apt update -qq; apt install -qq -y libcap2-bin
echo "Container running as root: "
id
echo "/sys/kernel/uevent_helper exposed in the container: "
mount | grep sysfs
ls -al /sys/kernel/uevent_helper
echo "Capability to remount /sys: "
capsh --print | grep cap_sys_admin
