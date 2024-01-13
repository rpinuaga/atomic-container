#!/bin/sh
echo "Container running as root: "
id
echo "/proc/sys/kernel/core_pattern exposed in the container: "
cat /proc/sys/kernel/core_pattern 
