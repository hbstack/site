---
type: docs
aliases:
  - /zh-hant/docs/modules/docs/overview/
title: "文檔概覽"
linkTitle: "概覽"
date: 2023-03-31T15:45:47+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: file-richtext
series:
  - 文檔
categories:
  - 模塊
tags:
images:
---

文檔模塊爲文檔站點提供了基本的佈局和模板，其對於編寫項目文檔、數字花園、用戶指南、教程等十分實用。

<!--more-->

{{% hb-module docs %}}

## 站點參數

| Parameter     |  Type  |   Default    | Description |
| ------------- | :----: | :----------: | ----------- |
| `date_format` | string | `:date_long` | 日期格式。  |

{{< bs/config-toggle params >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}

## 頁面參數

| Name                 |  Type   | Default | Description                                  |
| -------------------- | :-----: | :-----: | -------------------------------------------- |
| `comments`           | boolean | `true`  | 是否顯示評論。                               |
| `meta`     | boolean/object | `true` | 为 `false` 时，禁用所有元信息。 |
| `meta.authors` | boolean | `true` | 为 `false` 时，禁用作者元信息。|
| `meta.date`    | boolean | `true` | 为 `false` 时，禁用日期元信息。|
| `meta.reading_time` | boolean | `true` | 为 `false` 时，禁用阅读时长元信息。|
| `meta.taxonomies` | boolean | `true` | 为 `false` 时，禁用专栏、分类和标签元信息。|
| `nav_weight`         | number  |    -    | 文檔導航的權重，若未設置，則按鏈接標題排序。 |
| `nav_icon`           | object  |    -    | 顯示於文檔導航的圖標。                       |
| `nav_icon.vendor`    | string  |    -    | 圖標提供商。                                 |
| `nav_icon.name`      | string  |    -    | 圖標名稱。                                   |
| `nav_icon.color`     | string  |    -    | 圖標顏色。                                   |
| `nav_icon.className` | string  |    -    | 圖標 CSS 類名。                              |
| `nav_menus`          | object  |    -    | 額外的外部菜單，僅對欄目有效。                 |
| `nav_menus.name`     | object  |    -    | 額外菜單名稱。                               |
| `nav_menus.url`      | object  |    -    | 額外菜單 URL。                               |
| `nav_menus.icon`     | object  |    -    | 額外菜單圖標。                               |
| `redirect`           | string  |    -    | 外部文檔的 URL。                             |
