#!/bin/sh
apt update -qq; apt install -qq curl
curl -s -L "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" -o /tmp/kubectl
chmod +x /tmp/kubectl
echo "Permission to create pods: "
/tmp/kubectl auth can-i create Pod
