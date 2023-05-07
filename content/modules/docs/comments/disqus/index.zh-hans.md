---
type: docs
aliases:
  - /zh-hans/docs/modules/docs/disqus/
title: "文档 Disqus 评论引擎"
linkTitle: "Disqus"
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

该模块为文档模块提供 [Disqus](https://disqus.com) 评论支持。

<!--more-->

{{% hb-module "docs/modules/disqus" %}}

## 站点配置

| Parameter         |  Type  | Default | Description         |
| ----------------- | :----: | :-----: | ------------------- |
| `disqusShortname` | string |    -    | Disqus 的站点标识。 |

{{< bs/config-toggle hugo >}}
disqusShortname: XXXXX
{{< /bs/config-toggle >}}
