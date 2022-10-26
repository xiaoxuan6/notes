---
title: docker 安装教程 
---

# 安装 docker

## 安装依赖

```
sudo apt -y install cgroupfs-mount libltdl7
```

## 下载安装包

```bazaar
wget -O /tmp/docker-ce.deb https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_17.09.0~ce-0~ubuntu_amd64.deb
```

## 开始安装

```bazaar
sudo dpkg -i /tmp/docker-ce.deb
```
