#!/usr/bin/env bash

#   使用kubeadm安装master，设置好相应的pod网络地址。
#   注意：这里使用前需要先disable swap，不然会报错，ubuntu的相关命令： sudo swapoff -a

# --api-advertise-addresses <ip-address>
# for flannel, setup --pod-network-cidr 10.244.0.0/16
kubeadm init --pod-network-cidr 10.244.0.0/16 --kubernetes-version latest

# enable schedule pods on the master
export KUBECONFIG=/etc/kubernetes/admin.conf
# for v1.5-, use kubectl taint nodes --all dedicated-
kubectl taint nodes --all node-role.kubernetes.io/master:NoSchedule-