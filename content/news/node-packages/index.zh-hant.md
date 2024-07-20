---
title: "HB Framework 元 Node.js 包"
description: "包含所有 HB 框架的需要构建工具的元 Node.js 包。"
date: 2024-07-19T12:14:52+08:00
series:
  - 新闻
categories:
tags:
  - Node.js
  - Node
  - Requirements
  - Autoprefixer
  - PostCSS
  - PurgeCSS
  - RTLCSS
aliases:
  - /news/2024/07/hb-framework-node.js-meta-packages/
---

## 这是什么？

`@hbstack/node-packages` 是一个元 Node.js 包，包含 HB 框架的所有要求，如 Autoprefixer、PostCSS、PurgeCSS 和 RTLCSS，其用于简化依赖的安装。

## 迁移

迁移是可选的，它不会破坏网站的构建，但我们建议这样做，主要优点是即使将来 HB 框架移除或添加依赖项，您也只需要更新元包。

### 移除单独的包

{{< page-resource-content "data/remove-packages" >}}

### 安装多合一的元包

{{< page-resource-content "data/install-meta-package" >}}
