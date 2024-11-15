# Atomic Container
------------------

Library of security tests/PoCs focused on Container escape/breakout attacks. Security teams can use these tests to quickly reproduce potential attacks and probe their detection capabilities.

## Tests

* T0001 - CAP_SYS_ADMIN + Cgroups1 release_agent
* T0002 - Create Pod + Host path
* T0003 - CAP_SYS_MODULE + Kernel module
* T0004 - CAP_SYS_ADMIN + Block device exposed
* T0005 - CAP_SYS_ADMIN + HostPID exposed
* T0006 - CAP_SYS_RAWIO
* T0007 - CAP_SYS_PTRACE + HostPID exposed
* T0008 - /proc/sys/kernel/core_pattern exposed
* T0009 - /var/log mount + symlink
* T0010 - CAP_NET_ADMIN
* T0011 - /run/containerd/containerd.sock exposed
* T0012 - /sys/kernel/uevent_helper exposed
* T0013 - CVE-2024-21626 (Leaky Vessels)
* T0014 - Kubelet exposed
* T0015 - /proc/sys/fs/binfmt_misc/ exposed
* T0016 - eBPF
* T0017 - shareProcessNamespace: true

Each test includes:
- A check.sh script which verifies if the environment is vulnerable to the attack
- A exploit.sh script which launches the attack and tries to create a sample file in the /tmp folder of the hosting node

## Sample container

These test were created initially to run on a Kubernetes host, however depending on your specific Kubernetes configuration some of them may not fully work.

You can try the different tests in the included sample container:
- cd sample_container
- kubectl create -f sample-pod.yml
- kubectl exec --stdin --tty escapetest-pod -- bash
