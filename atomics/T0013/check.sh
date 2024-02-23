#!/bin/sh
apt update; apt install -q -y curl
curl -L "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" -o /tmp/kubectl
chmod 755 /tmp/kubectl
echo "Permission to create pods: "
/tmp/kubectl auth can-i create Pod
