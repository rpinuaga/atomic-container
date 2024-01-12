#!/bin/sh
curl -L "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" -o /tmp/kubectl
chmod 755 /tmp/kubectl
/tmp/kubectl auth can-i create pods
