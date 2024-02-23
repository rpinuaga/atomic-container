#!/bin/sh
apt update; apt install -qq libcap2-bin
echo "Container running as root: "
id
echo "CAP_SYS_MODULE capability: "
capsh --print | grep cap_sys_module
