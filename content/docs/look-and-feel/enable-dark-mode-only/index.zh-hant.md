---
title: "僅開啟暗色模式"
description: "取消淺色和自動模式/主題，只保留適合自己口味的深色模式/主題是合理的。"
date: 2024-01-15T13:12:57+08:00
draft: false
nav_icon:
  vendor: bs
  name: stars
series:
  - 文檔
categories:
  - 觀感
tags:
  - 深色模式
  - 深色主題
  - 自動模式
  - 淺色模式
  - 淺色主題
images:
authors:
  - HB
---

## 移除頁頭主題切換模塊

首先你需要移除 `github.com/hbstack/header/modules/theme-toggle` 模塊。

如果你使用元模塊，另請參閱[替換元模塊]({{< relref "blog/replace-meta-modules" >}})。

## 修改默認的模式/主題

{{% bs/alert warning %}}
`hb.color` 自 `github.com/hbstack/hb@v0.9.0` 可用，請確保你已升級到最新版本。
{{% /bs/alert%}}

{{< bs/config-toggle filename=hugo title="站點參數" >}}
hb:
  color: dark
{{< /bs/config-toggle >}}
