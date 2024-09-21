---
type: docs
title: "目录滚动监听模块"
linkTitle: "目录滚动监听"
description: "自动更新内容目录导航，以指示视口中当前活动的标题。"
date: 2024-09-21T21:45:40+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: arrow-down-up
series:
  - Modules
categories:
tags:
  - ToC
  - Table of Content
  - Scollspy
images:
authors:
  - HB
---

{{% hb-module "toc-Scollspy" %}}

要使用该模块，你可以选择使用已有模块，比如[博客目录滚动监听](/modules/blog/toc-scrollspy)和[文档目录滚动监听](/modules/docs/toc-scrollspy)，或者[集成模块到自定义布局中](#集成)。

## 集成

首先导入模块，并于内容容器元素中追加 `data-bs-spy` 和 `data-bs-target` 属性。

{{< page-resource-content "data/integration" >}}

{{% params data="data/params.yaml" heading="站点参数" context="hb.toc_scrollspy" %}}
