#!/bin/sh
echo "Instaling dependencies: "
apt update -qq; apt install -qq -y curl
curl -s -L "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" -o /tmp/kubectl
chmod +x /tmp/kubectl
echo "Permission to create pods: "
/tmp/kubectl auth can-i create Pod
/tmp/kubectl auth can-i create ReplicationController
/tmp/kubectl auth can-i create ReplicaSet
/tmp/kubectl auth can-i create Deployment
/tmp/kubectl auth can-i create DaemonSet
/tmp/kubectl auth can-i create Job
/tmp/kubectl auth can-i create CronJob
/tmp/kubectl auth can-i create StatefulSet
