---
type: docs
aliases:
  - /zh-hant/docs/modules/footer/beian/
title: "頁尾備案模塊"
linkTitle: 備案
date: 2023-04-17T13:12:16+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
tags:
  - 備案
images:
authors:
  - HB
---

該模塊用於顯示備案相關鏈接。

<!--more-->

{{% hb-module "footer/modules/beian" %}}

## 站點配置

| Name         |  Type  | Default |
| ------------ | :----: | :-----: |
| `icp_number` | string |    -    |
| `number`     | string |    -    |

{{% bs/config-toggle hugo %}}
{{% code-snippet params.toml %}}
{{% /bs/config-toggle %}}
