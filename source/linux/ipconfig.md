---
title: ubuntu - zsh command not found ifconfig
---

`ubuntu` 下无法查看 `ip`，执行命令：

```bazaar
ifconfig
```

报错：找不到命令

```bazaar
zsh: command not found: ifconfig
```

原因：是因为你没有安装`net-tools`。

解决：

```bazaar
sudo apt install net-tools
```