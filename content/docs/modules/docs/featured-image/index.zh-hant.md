---
title: "文檔特色圖片"
title: "特色圖片"
date: 2023-03-31T16:50:16+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
tags:
  - 特色圖片
images:
---

若存在特色圖片時，其將被顯示在文檔上方。

<!--more-->

{{% hb-module "docs/modules/featured-image" %}}

## 特色圖片選擇順序

1. `images` 參數的第一張圖片，通常被用於 `static` 和外部圖片。
2. 以 `feature*` 模式命名的頁面圖片資源，如 `feature.png` 、`featured-xx.jpg`。特色圖片資源將會被調整到更小的尺寸，以節省用戶和服務器的帶寬。
