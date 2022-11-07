---
title: Docker 多阶构建
---

## 前提

> docker > 17.05

在同一个 `Dockerfile` 中定义多个 `FROM`

```bash
FROM nginx:latest

FROM scratch
```

## 跨容器复制

给容器设置别名，在需要复制的容器中指定别名，`COPY --from=目标容器 文件路径 需要复制存放的路径`

```bash
FROM nginx:latest AS nginx


FROM scratch

COPY --from=nginx /usr/local/nginx/defult.conf . 
```

## 镜像比较

`latest`、`alpine`、`scratch` 三种镜像那种更小？

### Latest

latest 一般都是镜像的最新版本，所占内存是最大的。

### Alpine

Alpine 一个基于 `musl libc` 和 `busybox`、面向安全的轻量级 Linux 发行版。它本身的 Docker 镜像只有 4～5M 大小。各开发语言和框架都有基于 alpine
制作的基础镜像，在开发自己应用的镜像时，选择这些镜像作为基础镜像，可以大大减小镜像的体积。

### Scratch

Scratch 是一个空镜像，只能用于构建其他镜像，比如你要运行一个包含所有依赖的二进制文件，如 Golang 程序，可以直接使用 scratch 作为基础镜像。