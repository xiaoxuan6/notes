---
title: Oh My Zsh
---

# Zsh 是什么

Zsh 是一款强大的虚拟终端，既是一个系统的虚拟终端，也可以作为一个脚本语言的交互解析器。

```bash
# 打开终端，在终端上输入: 
zsh --version

# 这个命令来查看我们的电脑上是否安装了 Zsh 
```

## 安装 Oh My Zsh 方法
 
可以通过 curl 或 wget 两种方式来安装，用一条命令即可安装。

### curl 安装

GitHub:
```bazaar
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Gitee ( 国内镜像 )
```bazaar
sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"
```

### wget 安装

GitHub:
```bazaar
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

Gitee ( 国内镜像 )
```bazaar
sh -c "$(wget -O- https://gitee.com/pocmon/mirrors/raw/master/tools/install.sh)"
```

## 设置主题

### 设置固定主题

安装完毕后，我们就可以使用了，先来简单配置一下，`Oh My Zsh` 提供了很多主题风格，我们可以根据自己的喜好，设置主题风格
```bazaar
vim ~/.zshrc

# 找到 ZSH_THEME
# robbyrussell 是默认的主题
ZSH_THEME="robbyrussell"

# ZSH_THEME="样式名称"
ex:
  ZSH_THEME="ys" 
```
保存这个文件文件，重新打开终端。刷新 `zshcr`
```bazaar
source ~/.zshrc 
```

### 设置随机主题

步骤如上，仅需设置 `ZSH_THEME` 为 `random` 即可。
```bazaar
ZSH_THEME="random"
```

## 查看主题名称

`Oh My Zsh` 默认自带了一些默认主题，存放在 `~/.oh-my-zsh/themes` 目录中。我们可以查看这些主题
终端输入：
```bazaar
cd ~/.oh-my-zsh/themes && ls
```

## 更多主题样式

[Themes](https://link.zhihu.com/?target=https%3A//github.com/robbyrussell/oh-my-zsh/wiki/Themes)

## 卸载 Oh My Zsh 

终端输入：
```bazaar
uninstall_oh_my_zsh
```

终端提示信息：
```bazaar
Removing ~/.oh-my-zsh
Looking for original zsh config...
Found ~/.zshrc.pre-oh-my-zsh -- Restoring to ~/.zshrc
Found ~/.zshrc -- Renaming to ~/.zshrc.omz-uninstalled-20170820200007
Your original zsh config was restored. Please restart your session.
Thanks for trying out Oh My Zsh. It's been uninstalled.
```

## Tips

Oh My Zsh 的自动更新提示误触关掉了解决办法
打开终端输入：
```bazaar
upgrade_oh_my_zsh
```