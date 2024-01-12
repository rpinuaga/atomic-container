# Atomic Container
------------------
ramon.pinuaga@skyscanner.net

Library of security tests focused on Container escape attacks. Security teams can use these tests to quickly reproduce potential attacks and probe their detection capabilities.

## Tests

* T0001 - CAP_SYS_ADMIN + Cgroups1 release_agent
* T0002 - Create Pod + Host path
* T0003 - CAP_SYS_MODULE + Kernel module
* T0004 - CAP_SYS_ADMIN + Block device exposed
* T0005 - CAP_SYS_ADMIN + HostPID exposed
* T0006 - CAP_SYS_RAWIO
* T0007 - CAP_SYS_PTRACE
* T0008 - /proc/sys/kernel/core_pattern exposed
* T0009 - /var/log mount + symlink

## Notes

TBD

