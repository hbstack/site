---
type: docs
title: "谷歌字體模塊"
linkTitle: "谷歌字體"
description: 該模塊將谷歌字體整合於 HB 框架，其允許制定多個字體及其軸範圍。
date: 2023-11-15T00:24:24+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: fonts
series:
  - 模塊
categories:
  - 觀感
tags:
  - 字體
  - 谷歌字體
images:
authors:
  - HB
---

{{% hb-module "google-fonts" %}}

## 站點參數

{{% parameters "params.yml" %}}

{{< bs/config-toggle "hugo" >}}
{{% file-content "codes/config.yml" %}}
{{< /bs/config-toggle >}}

## 參考文檔

- [瀏覽谷歌字體](https://fonts.google.com/)
- [構造 Google 字體應用程序接口 URL](https://developers.google.com/fonts/docs/css2#forming_api_urls)
