#!/bin/sh
echo "Exposed /run/containerd/containerd.sock: "
ls -al /run/containerd/containerd.sock
echo "Looking for containerd.sock variants: "
find / -name dockershim.sock -o -name containerd.sock -o -name crio.sock -o -name cri-dockerd.sock -o -name docker.sock 2>/dev/null
