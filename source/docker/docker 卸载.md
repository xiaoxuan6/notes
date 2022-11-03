---
title: 卸载docker
---

## 删除某软件,及其安装时自动安装的所有包

```
sudo apt-get autoremove docker docker-ce docker-engine  docker.io  containerd runc
```

## 删除docker其他没有没有卸载

```angular2html
dpkg -l | grep docker
```

## 卸载没有删除的docker相关插件(结合自己电脑的实际情况)

```angular2html
sudo apt-get autoremove docker-ce-*
```

## 删除docker的相关配置&目录

```angular2html
sudo rm -rf /etc/systemd/system/docker.service.d
sudo rm -rf /var/lib/docker
```

## 确定docker卸载完毕

```angular2html
docker --version
```