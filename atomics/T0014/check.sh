#!/bin/sh
echo "Instaling dependencies: "
apt update -qq; apt install -qq curl
curl -s -L "https://github.com/cyberark/kubeletctl/releases/download/v1.11/kubeletctl_linux_amd64" -o /tmp/kubeletctl
chmod +x /tmp/kubeletctl
node=`/tmp/kubeletctl scan -r --cidr $(hostname -i)/24 | grep https | sed 's|.*https://\(.*\):.*|\1|g'`
echo "Exposed node kubelet: "
echo "$node"

