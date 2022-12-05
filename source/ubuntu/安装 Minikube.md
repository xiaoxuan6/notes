---
title: 安装 minikube
---

# 安装 minikube

```bash
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && sudo cp minikube-linux-amd64 /usr/local/bin/minikube && sudo chmod 755 /usr/local/bin/minikube
```

安装完成后,可以使用 `minikube version` 命令检测安装结果,正常情况下会输出版本信息 

# 安装 kubectl

```bash
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && chmod +x ./kubectl && sudo mv ./kubectl /usr/local/bin/kubectl
```

安装完成后,可以通过 `kubectl version -o json` 命令检测安装结果

# 启动 Minikube (docker为驱动，常见为 VirtualBox)

```bash
minikube start --driver=docker
```

如果报错：

```bash
$ minikube start --driver=docker
😄  minikube v1.28.0 on Ubuntu 20.04
✨  Using the docker driver based on existing profile
🛑  The "docker" driver should not be used with root privileges. If you wish to continue as root, use --force.
💡  If you are running minikube within a VM, consider using --driver=none:
📘    https://minikube.sigs.k8s.io/docs/reference/drivers/none/
💡  Tip: To remove this root owned cluster, run: sudo minikube delete

❌  Exiting due to DRV_AS_ROOT: The "docker" driver should not be used with root privileges.
```

解决方法：`minikube start --force --driver=docker`

> 参考地址：
> https://segmentfault.com/a/1190000023702396
> https://www.lsbin.com/9491.html
> https://www.jianshu.com/p/3e0a9d79a70d
> https://blog.51cto.com/u_2837193/4956577
> https://skyao.io/learning-kubernetes/docs/installation/minikube/ubuntu.html