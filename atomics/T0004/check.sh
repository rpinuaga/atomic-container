#!/bin/sh
apt update; apt install libcap2-bin util-linux
capsh --print | grep cap_sys_admin
lsblk | grep part