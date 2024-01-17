#!/bin/sh
apt update; apt install -y libcap2-bin
echo "Container running as root: "
id
echo "CAP_SYS_ADMIN capability: "
capsh --print | grep cap_sys_admin
echo "Cgroups v1 enabled (+rw): "
mount | grep "/sys/fs/cgroup/memory type cgroup (rw"
echo "A path to the OverlayFS mounted in container: "
mount | sed -n 's/.*\perdir=\([^,]*\).*/\1/p'
