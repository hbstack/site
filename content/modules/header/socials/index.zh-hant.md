---
type: docs
aliases:
  - /zh-hant/docs/modules/header/socials/
title: "頁頭社交鏈接模塊"
linkTitle: 社交鏈接
date: 2023-02-17T00:06:59+08:00
draft: false
nav_icon:
  vendor: bs
  name: share
series:
  - 文檔
categories:
  - 模塊
  - 頁頭
tags:
  - 社交鏈接
images:
authors:
  - HB
---

該模塊於頁頭生成和顯示社交鏈接。

<!--more-->

{{% hb-module "header/modules/socials" %}}

## 站點參數

| Parameter |  Type  | Default | Description                                     |
| --------- | :----: | :-----: | ----------------------------------------------- |
| `socials` | object |    -    | 從[社交媒體]({{< ref "modules/components/socials#社交媒體" >}})映射到[用戶標識]({{< ref "modules/components/socials#用戶標識" >}})。 |

{{< bs/config-toggle hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}
