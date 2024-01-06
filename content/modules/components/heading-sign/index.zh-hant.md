---
type: docs
title: "HB 標題符號模塊"
linkTitle: "標題符號"
description: "當用戶懸停時，該模塊於標題旁邊顯示一個錨點鏈接。"
date: 2024-01-06T15:33:09+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: paragraph 
series:
  - 模塊
categories:
  - 組件
tags:
  - 標題
  - 標題符號
images:
authors:
  - HB
---

{{% hb-module "heading-sign" %}}

## 參數

{{< bs/config-toggle filename="params" title="Site Parameters" >}}
hb:
  heading_sign:
    symbol: '§'
{{< /bs/config-toggle >}}

### `symbol`

錨點鏈接符號，默認為 `§`。
