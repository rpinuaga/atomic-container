#!/bin/sh
echo "Instaling dependencies: "
apt update -qq; apt install -qq -y libcap2-bin
echo "Container running as root: "
id
echo "CAP_SYS_MODULE capability: "
capsh --print | grep cap_sys_module
