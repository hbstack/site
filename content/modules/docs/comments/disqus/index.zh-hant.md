---
type: docs
aliases:
  - /zh-hant/docs/modules/docs/disqus/
title: "文檔 Disqus 評論引擎"
linkTitle: "Disqus"
date: 2023-03-31T16:42:09+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
tags:
  - 評論
  - Disqus
images:
---

該模塊爲文檔模塊提供 [Disqus](https://disqus.com) 評論支持。

<!--more-->

{{% hb-module "docs/modules/disqus" %}}

## 站點配置

| Parameter         |  Type  | Default | Description         |
| ----------------- | :----: | :-----: | ------------------- |
| `disqusShortname` | string |    -    | Disqus 的站點標識。 |

{{< bs/config-toggle hugo >}}
disqusShortname: XXXXX
{{< /bs/config-toggle >}}
