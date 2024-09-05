---
title: "Blockquote 警告模块"
linkTitle: "Blockquote 警告"
description: "用于通过 Blockquote 生成警告，与短代码相比，其更加简单易用。"
date: 2024-09-05T10:34:31+08:00
draft: false
nav_icon:
  vendor: bs
  name: info-circle
series:
  - 模块
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

## 警告语法

{{< page-resource-content "data/syntax" >}}

> [!IMPORTANT]
> `TYPE` 为必填。

> [!NOTE]+
> `SIGN` 可选，其用于指示警告是否可折叠，加号 `+` 将默认展开警告。

> [!QUESTION]+ TITLE 是否必填？
> 仅当类型为 `QUESTION` 时，`TITLE` 必填，当然其可以用于自定义标题。

## 警告示例

{{< page-resource-content "data/examples" >}}
