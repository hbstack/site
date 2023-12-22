---
type: docs
aliases:
  - /zh-hans/docs/modules/footer/socials/
title: "页尾社交链接"
linkTitle: "社交链接"
date: 2023-02-17T00:06:59+08:00
draft: false
nav_icon:
  vendor: bs
  name: share
series:
  - 文档
categories:
  - 模块
  - 页尾
tags:
  - 社交链接
images:
authors:
  - HB
---

该模块于页尾生成和显示社交链接。

<!--more-->

{{% hb-module "footer/modules/socials" %}}

## 站点参数

| Parameter |  Type  | Default | Description                                     |
| --------- | :----: | :-----: | ----------------------------------------------- |
| `socials` | object |    -    | 由[社交媒体]({{< ref "modules/components/socials#社交媒体" >}})映射到[用户标识]({{< ref "modules/components/socials#用户标识" >}})。 |

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}

> 将 `_color` 设置为 `false` 以禁用彩色图标。
