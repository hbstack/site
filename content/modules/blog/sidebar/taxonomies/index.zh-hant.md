---
type: docs
title: "博客側邊欄分類模塊"
linkTitle: "分類"
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
  - 分類
images:
authors:
  - HB
---

該模塊於博客側邊欄顯示分類列表。

<!--more-->

{{% hb-module "blog/modules/sidebar/taxonomies" %}}

## 站點參數

{{% parameters params.zh-hant.toml %}}

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}
