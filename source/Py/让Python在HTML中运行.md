---
title: 让 Python 在 HTML 中运行
---

<html>
  <head>
    <link rel="stylesheet" href="https://pyscript.net/alpha/pyscript.css" />
    <script defer src="https://pyscript.net/alpha/pyscript.js"></script>
    <style type="text/css"> 
        h1{
            font-size: 30px;
            margin-top: 21px;
            margin-bottom: 10.5px;
        }
    </style> 
    <py-env>
    - paths:
        - ./py/demo.py
    </py-env>
  </head>
  <body> 
    <py-script> 
    from demo import prinff
    from demo import path
    prinff()
    path()
    </py-script> 
  </body>
</html>

## 相关文章
[PyScript：让Python在HTML中运行](https://juejin.cn/post/7095808599305224199)

[PyScript：让 Python在Web 中跑起来](https://view.inews.qq.com/a/20220610A05D0X00)

[ PyScript 介绍——在你的网络浏览器中运行Python](https://juejin.cn/post/7126735201761230861#heading-3)
