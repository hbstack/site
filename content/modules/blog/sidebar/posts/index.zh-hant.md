---
type: docs
title: "博客側邊欄文章模塊"
linkTitle: "文章"
date: 2023-06-19T19:03:29+08:00
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - 模塊
categories:
  - 側邊欄
tags:
  - 文章
images:
authors:
  - HB
---

本模塊於博客側邊欄顯示最近和精選的文章列表。

<!--more-->

{{% hb-module "blog/modules/sidebar/posts" %}}

## 站點參數

{{% parameters params.zh-hant.toml %}}

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}
