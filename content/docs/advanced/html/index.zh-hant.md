---
title: "添加自定義 HTML 標記"
linkTitle: HTML
date: 2023-04-16T13:02:38+08:00
draft: false
series:
  - 文檔
categories:
tags:
  - HTML
  - Hooks
images:
authors:
  - HB
---

你可能希望包含自定義 HTML 標記，以擴展功能，這對於 HugoPress 內置鉤子和 HB 自定義鉤子來說小菜一碟。

<!--more-->

讓我們從一個簡單的示例開始，該示例在頁面頂部顯示一條問候消息。

![example](example.png)

## 選擇正確的鉤子

- [HugoPress 內置鉤子](https://hugomods.com/en/docs/hugopress/#hooks)。
- [頁頭鉤子]({{< relref "modules/header/overview#hooks" >}})。
- [頁尾鉤子]({{< relref "modules/footer/overview#hooks" >}})。
- [博客鉤子]({{< relref "modules/blog/hooks" >}})。
- [文檔鉤子]({{< relref "modules/docs#hooks" >}})。
- 更多鉤子可以通過我們文檔找到。

本例中，`body-begin` 正是我們需要的鉤子。

## 配置

然後配置鉤子。

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}

如果一切正常，Hugo 將抱怨找不到模板：_partial not found_。

{{% bs/alert warning %}}
{{% markdownify %}}
推薦使用 `hb-custom` 作爲 HugoPress 的模塊名稱，以避免和其他模塊衝突。
{{% /markdownify %}}
{{% /bs/alert %}}

{{% bs/collapse cacheable primary true %}}
因爲示例 HTML 並不包含動態內容，將其標記爲 `cacheable`，以提升構建性能。
{{% /bs/collapse %}}

## 創建模板

緊接着創建模板以包含 HTML，模板名稱和模塊、鉤子名稱相關。

{{% bs/collapse "layouts/partials/hugopress/modules/hb-custom/hooks/body-begin.html" primary true %}}
```html
{{% code-snippet body-end.html %}}
```
{{% /bs/collapse %}}

你可以通過 `.Page` 獲取頁面參數，若包含動態內容，請別忘記禁用 `cacheable`。
詳情請參閱 [Hooks Context](https://hugomods.com/en/docs/hugopress/#hooks-context)。

就這樣，現在問候語將出現在頁面的頂部。
