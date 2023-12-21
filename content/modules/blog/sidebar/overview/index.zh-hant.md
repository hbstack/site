---
type: docs
title: "博客側邊欄概覽"
linkTitle: "概覽"
date: 2023-06-19T19:03:29+08:00
nav_weight: 1
# nav_icon:
#   vendor: bs
#   name: book
series:
  - 模塊
categories:
  - 側邊欄
tags:
images:
authors:
  - HB
---

博客模塊支持一個可選的側邊欄佈局。

<!--more-->

## 如何使用？

你需要導入至少一個側邊欄模塊，以啟用側邊欄佈局，比如[簡介]({{< relref "modules/blog/sidebar/profile" >}})、[文章]({{< relref "modules/blog/sidebar/posts" >}})和[分類]({{< relref "modules/blog/sidebar/taxonomies" >}})模塊。

## 側邊欄參數

{{< bs/config-toggle filename="params" title="站點參數" >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}

### `position`

默認為 `start`（左側），為 `end` 時，側邊欄將被置於右側。

### `sticky`

是否固定側邊欄，默認為 `true`。

### `width`

側邊欄佔用的寬度，其為一個百分比值，如 `0.3`（等同於 `30%`）、`40%`。

## 如何添加自定義側邊欄組件

你可以添加自定義的側邊欄小掛件，比如：

首先定義以下配置。

{{< bs/config-toggle hugo >}}
{{% code-snippet custom-widget.yaml %}}
{{< /bs/config-toggle >}}

然後創建相關的模板。

{{% bs/collapse "layouts/partials/hugopress/modules/hb-custom/hooks/hb-blog-sidebar.html" primary true %}}
{{% code-snippet custom-widget-html %}}
{{% /bs/collapse %}}

## 修改模塊的順序

你還可以調整側邊欄模塊的順序，舉個例子。

{{< bs/config-toggle hugo >}}
{{% code-snippet order.yaml %}}
{{< /bs/config-toggle >}}
