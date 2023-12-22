---
type: docs
aliases:
  - /zh-hans/docs/modules/docs/feature-image/
title: "文档特色图片"
linkTitle: "特色图片"
date: 2023-03-31T16:50:16+08:00
draft: false
nav_icon:
  vendor: bs
  name: card-image
series:
  - 文档
categories:
  - 模块
tags:
  - 特色图片
images:
---

若存在特色图片时，其将被显示在文档上方。

<!--more-->

{{% hb-module "docs/modules/featured-image" %}}

## 特色图片选择顺序

1. `images` 参数的第一张图片，通常被用于 `static` 和外部图片。
2. 以 `feature*` 模式命名的页面图片资源，如 `feature.png` 、`featured-xx.jpg`。特色图片资源将会被调整到更小的尺寸，以节省用户和服务器的带宽。
