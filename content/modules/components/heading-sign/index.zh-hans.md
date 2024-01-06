---
type: docs
title: "HB 标题符号模块"
linkTitle: "标题符号"
description: "当用户悬停时，该模块于标题旁边显示一个锚点链接。"
date: 2024-01-06T15:33:09+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: paragraph 
series:
  - 模块
categories:
  - 组件
tags:
  - 标题
  - 标题符号
images:
authors:
  - HB
---

{{% hb-module "heading-sign" %}}

## 参数

{{< bs/config-toggle filename="params" title="Site Parameters" >}}
hb:
  heading_sign:
    symbol: '§'
{{< /bs/config-toggle >}}

### `symbol`

锚点链接符号，默认为 `§`。
