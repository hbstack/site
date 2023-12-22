---
type: docs
aliases:
  - /zh-hans/docs/modules/footer/beian/
title: "页尾备案模块"
linkTitle: 备案
date: 2023-04-17T13:12:16+08:00
draft: false
nav_icon:
  vendor: bs
  name: '123'
series:
  - 文档
categories:
  - 模块
tags:
  - 备案
images:
authors:
  - HB
---

该模块用于显示备案相关链接。

<!--more-->

{{% hb-module "footer/modules/beian" %}}

## 站点配置

| Name         |  Type  | Default |
| ------------ | :----: | :-----: |
| `icp_number` | string |    -    |
| `number`     | string |    -    |

{{% bs/config-toggle hugo %}}
{{% code-snippet params.toml %}}
{{% /bs/config-toggle %}}
