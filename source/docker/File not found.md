---
title: docker-compose中nginx可以访问html无法访问php 提示File not found.
---

## 第一种：没有解析PHP文件

1、更改配置文件 `nginx.conf`

```bazaar
fastcgi_param SCRIPT_FILENAME /scripts$fastcgi_script_name; 
```

替换成下面（就是把你root文件夹设为其他用户允许）

```bazaar
fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
```

2、注意 `fastcgi_pass`

```bazaar
location ~ \.php$ {
    fastcgi_pass   php:9000; # php 表示容器名称
    fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;
}
```

因为 `docker-compose.yml` 中的 php 的 services 叫 `php`，所以这里就是 `php：9000`

## 第二种：数据卷挂载问题

记得把 `php` 和 `nginx` 挂载在同一个数据卷下面

```bazaar
php:
    container_name: php
    volumes:
      - ./src:/var/www/html # 这里挂载的本地路径必须和 nginx 挂载的本地路径相同
      
nginx:
    container_name: nginx
    volumes:
      - ./src:/usr/share/nginx/html # 这里挂载的本地目录和 php 挂载的本地路径相同才可以解析 php 文件
      - ./nginx/default.conf:/etc/nginx/conf.d/default.conf
    depends_on:
      - php
```
