---
title: "Footer Beian Module"
linkTitle: Beian
date: 2023-04-17T13:12:16+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - beian
images:
authors:
  - HB
---

Beian (备案 in pinyin), it was designed for Chinese sites that display links about ICP records.

<!--more-->

{{% hb-module "footer/modules/beian" %}}

## Site Parameters

| Name         |  Type  | Default |
| ------------ | :----: | :-----: |
| `icp_number` | string |    -    |
| `number`     | string |    -    |

{{% bs/config-toggle hugo %}}
{{% code-snippet params.toml %}}
{{% /bs/config-toggle %}}
