#!/bin/sh
apt update; apt install libcap2-bin
capsh --print | grep cap_sys_module
