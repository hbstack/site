---
type: docs
title: "目錄滾動監聽模塊"
linkTitle: "目錄滾動監聽"
description: "自動更新內容目錄導航，以指示視口中當前活動的標題。"
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

要使用該模塊，你可以選擇使用已有模塊，比如[博客目錄滾動監聽](/modules/blog/toc-scrollspy)和[文檔目錄滾動監聽](/modules/docs/toc-scrollspy)，或者[集成模塊到自定義佈局中](#集成)。

## 集成

首先導入模塊，並於內容容器元素中追加 `data-bs-spy` 和 `data-bs-target` 屬性。

{{< page-resource-content "data/integration" >}}

{{% params data="data/params.yaml" heading="站點參數" context="hb.toc_scrollspy" %}}
