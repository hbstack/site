---
title: "博客 v0.23.0、v0.24.0 及相關模塊中的最新消息"
description: "博客的 v0.23.0、v0.24.0 版本及相關模塊中的最新改動和特性。"
date: 2023-12-21T13:42:58+08:00
draft: false
series:
  - 新聞
categories:
  - 模塊
tags:
  - 博客
  - 側邊欄
  - 分類
  - 文章
images:
authors:
  - HB
---

## 博客模塊

隨著[博客模塊]({{< relref "modules/blog" >}}) `v0.23.0` 和 `v0.24.0` 的發佈，博客佈局變得更加靈活，現在你可以：

1. 改變佈局：一列（無側邊欄）、兩列或三列。
1. 更改邊欄位置：左側或右側。
1. 調整側邊欄寬度。
1. 是否粘貼側邊欄。
1. 更改 ToC （目錄）位置：內容左側、內容右側或內容上方。
1. 將相應參數設置為 `0`，刪除主頁上的幻燈片。
1. 自定義 `md`、`lg` 斷點的每行文章數。
1. 新增鉤子：`hb-blog-post-content-afterbegin` 和 `hb-blog-post-content-beforeend`。

### 博客側邊欄文章模塊

[博客側邊欄文章模塊]({{< relref "modules/blog/sidebar/posts" >}})的 `v0.7.0` 引入了一種名為 `vertical` 的新列表樣式。

![博客側邊欄文章模塊的垂直列表樣式](/images/docs/modules/blog/sidebar/posts/vertical.png#center)

### 博客邊欄分類模塊

[博客側邊欄分類法模塊]({{< relref "modules/blog/sidebar/taxonomies" >}})的 `v0.4.0` 版本允許將分類分離開來。

![博客側邊欄分類法模塊的分離示例](/images/docs/modules/blog/sidebar/taxonomies/separated.png#center)
