#!/bin/sh
apt update; apt install libcap2-bin 
capsh --print | grep cap_sys_admin
lsns -t mnt 