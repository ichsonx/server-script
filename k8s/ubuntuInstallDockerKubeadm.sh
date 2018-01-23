#!/usr/bin/env bash

#   ubuntu安装docker、kubeadm，并且安装其所依赖的其他软件，并设置开机启动
#   这样是使用kubeadm来安装完整的k8s的集群
#   参考地址：https://feisky.gitbooks.io/kubernetes/deploy/kubeadm.html#ubuntu。官网也有的。

apt-get update && apt-get install -y apt-transport-https
#   下面是下载k8s的ubuntu仓库key，虚拟机即使翻墙了也很有可能下载不了，作者就是这种情况
#   可以windows上先哲在这个gpg，然后用apt-key来添加，然后后面的命令就可以全部顺利完成了
#curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF > /etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF

apt-get update

# Install docker if you don't have it already.
apt-get install -y docker.io
apt-get install -y kubelet kubeadm kubectl kubernetes-cni
systemctl enable docker && systemctl start docker
systemctl enable kubelet