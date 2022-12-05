---
title: docker 容器无法访问外网
---

在容器中使用 `git clone` 报错: 

```bash
Could not resolve host: github.com; Unknown error
```

解决方法：修改 `/etc/resolv.conf`, 然后重启 docker

```bash
nameserver 8.8.8.8
```