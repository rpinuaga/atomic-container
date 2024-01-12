#!/bin/sh
apt update; apt install libcap2
capsh --print | grep cap_sys_admin
mount | grep "/sys/fs/cgroup/memory type cgroup (rw"
mount | sed -n 's/.*\perdir=\([^,]*\).*/\1/p'