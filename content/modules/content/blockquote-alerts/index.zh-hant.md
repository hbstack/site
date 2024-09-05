---
type: docs
title: "Blockquote 警告模塊"
linkTitle: "Blockquote 警告"
description: "用於通過 Blockquote 生成警告，與短代碼相比，其更加簡單易用。"
date: 2024-09-05T10:34:31+08:00
draft: false
nav_icon:
  vendor: bs
  name: info-circle
series:
  - 模塊
categories:
  - Markdown
tags:
  - Blockquote
  - 警告
images:
authors:
  - HB
---

{{% hb-module "blockquote-alerts" %}}

## 警告語法

{{< page-resource-content "data/syntax" >}}

> [!IMPORTANT]
> `TYPE` 為必填。

> [!NOTE]+
> `SIGN` 可選，其用於指示警告是否可摺疊，加號 `+` 將默認展開警告。

> [!QUESTION]+ TITLE 是否必填？
> 僅當類型為 `QUESTION` 時，`TITLE` 必填，當然其可以用於自定義標題。

## 警告示例

{{< page-resource-content "data/examples" >}}
