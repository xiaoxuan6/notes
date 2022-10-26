---
title: docker-compose 安装教程 
---

# 安装 docker-compose

两种最新的docker安装方式

## 从github上下载docker-compose二进制文件安装

下载最新版的docker-compose文件 
```bazaar
sudo curl -L https://get.daocloud.io/docker/compose/releases/download/1.25.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
```

### 添加可执行权限
```bazaar
sudo chmod +x /usr/local/bin/docker-compose
```

### 测试安装结果
```bazaar
docker-compose --version
```

## pip安装

```bazaar
sudo pip install docker-compose
```