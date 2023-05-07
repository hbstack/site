---
type: docs
aliases:
  - /zh-hant/docs/modules/header/overview/
title: 頁頭概覽
linkTitle: "概覽"
date: 2023-02-16T23:58:05+08:00
draft: false
nav_weight: 1
series:
  - 文檔
categories:
  - 模塊
tags:
  - 頁頭
images:
authors:
  - HB
---

頁頭模塊是一個通用的頂部應用欄，其帶有一些實用的子模塊，比如搜索表單、社交鏈接、淺色/深色切換以及語言切換等。

<!--more-->

{{% hb-module header %}}

## 站點參數

| Parameter         |  Type   | Default  | Description                                   |
| ----------------- | :-----: | :------: | --------------------------------------------- |
| `brand`           | string  | 站點標題 | 品牌文本。                                    |
| `full_width`      | boolean |  `true`  | 是否全寬。                                    |
| `logo_bg`         | string  |    -     | Logo 背景色 background，用於透明背景的 Logo。 |
| `menus_alignment` | string  | `start`  | 菜單對齊：`start`、`center` 和 `end`。        |
| `sticky`          | boolean |  `true`  | 是否固定頭部。                                |
| `theme`           | string  |    -     | 可用主題：`classic`。                         |

> `logo` 參數屬於[核心模塊]({{< relref "modules/hb#站點參數" >}})。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}

## 鉤子

| Name                       | Description        |
| -------------------------- | ------------------ |
| `hb-header-nav-begin`      | 與頁頭導航開始處。 |
| `hb-header-togglers-begin` | 於切換按鈕開始處。 |
| `hb-header-togglers-end`   | 於切換按鈕結束前。 |
| `hb-header-panel`          | 頁頭面板。         |
