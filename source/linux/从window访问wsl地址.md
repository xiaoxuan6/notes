---
title: 从window访问wsl地址
---

## 问题描述

在 wsl 的 Linux 中通过 `curl 127.0.0.1:port` 可以正常访问，但是在 window 浏览器中 `127.0.0.1:port` 是找不到网址的。

## 解决方法

正常查看 linux 网址 `ip addr`, `eth0` 那个网址就是wsl的网址.

```bazaar
ip addr | grep eth0
```