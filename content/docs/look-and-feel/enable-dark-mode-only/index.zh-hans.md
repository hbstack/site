---
title: "仅开启暗色模式"
description: "取消浅色和自动模式/主题，只保留适合自己口味的深色模式/主题是合理的。"
date: 2024-01-15T13:12:57+08:00
draft: false
nav_icon:
  vendor: bs
  name: stars
series:
  - 文档
categories:
  - 观感
tags:
  - 深色模式
  - 深色主题
  - 自动模式
  - 浅色模式
  - 浅色主题
images:
authors:
  - HB
---

## 移除页头主题切换模块

首先你需要移除 `github.com/hbstack/header/modules/theme-toggle` 模块。

如果你使用元模块，另请参阅[替换元模块]({{< relref "blog/replace-meta-modules" >}})。

## 修改默认的模式/主题

{{% bs/alert warning %}}
`hb.color` 自 `github.com/hbstack/hb@v0.9.0` 可用，请确保你已升级到最新版本。
{{% /bs/alert%}}

{{< bs/config-toggle filename=params title="站点参数" >}}
hb:
  color: dark
{{< /bs/config-toggle >}}
