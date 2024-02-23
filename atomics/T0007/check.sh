#!/bin/sh
echo "Instaling dependencies: "
apt update -qq; apt install -qq libcap2-bin
echo "Container running as root:"
id
echo "CAP_SYS_PTRACE and CAP_SYS_ADMIN capabilities: "
capsh --print | grep -e cap_sys_ptrace -e cap_sys_admin
echo "A host process is running under the PID namespace of the container: "
lsns -t mnt 
