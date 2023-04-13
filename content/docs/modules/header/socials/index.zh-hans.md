---
title: "页头社交链接模块"
linkTitle: 社交链接
date: 2023-02-17T00:06:59+08:00
draft: false
series:
  - 文档
categories:
  - 模块
  - 页头
tags:
  - 社交链接
images:
authors:
  - HB
---

该模块于页头生成和显示社交链接。

<!--more-->

{{% hb-module "header/modules/socials" %}}

## 站点参数

| Parameter |  Type  | Default | Description                                     |
| --------- | :----: | :-----: | ----------------------------------------------- |
| `socials` | object |    -    | 从[社交媒体]({{< ref "docs/modules/socials#社交媒体" >}})映射到[用户标识]({{< ref "docs/modules/socials#用户标识" >}})。 |

{{< bs/config-toggle hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}
