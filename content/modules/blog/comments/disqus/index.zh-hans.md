---
type: docs
aliases:
  - /zh-hans/docs/modules/blog/disqus/
title: "博客 Disqus 评论引擎"
title: "Disqus"
date: 2023-03-31T16:42:09+08:00
draft: false
series:
  - 文档
categories:
  - 模块
tags:
  - 评论
  - Disqus
images:
---

该模块为博客模块提供 [Disqus](https://disqus.com) 评论支持。

<!--more-->

{{% hb-module "blog/modules/disqus" %}}

## 站点配置

| Parameter         |  Type  | Default | Description         |
| ----------------- | :----: | :-----: | ------------------- |
| `disqusShortname` | string |    -    | Disqus 的站点标识。 |

{{< bs/config-toggle hugo >}}
disqusShortname: XXXXX
{{< /bs/config-toggle >}}
