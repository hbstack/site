---
type: docs
title: "谷歌字体模块"
linkTitle: "谷歌字体"
description: 该模块将谷歌字体整合于 HB 框架，其允许制定多个字体及其轴范围。
date: 2023-11-15T00:24:24+08:00
draft: false
featured: true
nav_weight: 1000
nav_icon:
  vendor: bs
  name: fonts
series:
  - 模块
categories:
  - 观感
tags:
  - 字体
  - 谷歌字体
images:
authors:
  - HB
---

{{% hb-module "google-fonts" %}}

## 站点参数

{{% parameters "params.yml" %}}

{{< bs/config-toggle "hugo" >}}
{{% file-content "codes/config.yml" %}}
{{< /bs/config-toggle >}}

## 参考文档

- [浏览谷歌字体](https://fonts.google.com/)
- [构造 Google 字体应用程序接口 URL](https://developers.google.com/fonts/docs/css2#forming_api_urls)
