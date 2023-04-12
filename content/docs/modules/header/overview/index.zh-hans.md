---
title: "概览"
date: 2023-02-16T23:58:05+08:00
draft: false
nav_weight: 1
series:
  - 文档
categories:
  - 模块
tags:
  - Header
images:
authors:
  - HB
---

页头模块是一个通用的顶部应用栏，其带有一些实用的子模块，比如搜索表单、社交链接、浅色/深色切换以及语言切换等。

<!--more-->

{{% hb-module header %}}

## 站点参数

| Parameter    |  Type   |   Default    | Description                   |
| ------------ | :-----: | :----------: | ----------------------------- |
| `brand`      | string  | Site's title | The brand text.               |
| `theme`      | string  |      -       | Available themes: `classic`.  |
| `full_width` | boolean |    `true`    | Whether to take full width.   |
| `sticky`     | boolean |    `true`    | Whether to sticky the header. |

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}
