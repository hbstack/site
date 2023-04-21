---
title: "文檔概覽"
linkTitle: "概覽"
date: 2023-03-31T15:45:47+08:00
draft: false
nav_weight: 1
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
| `nav_weight`         | number  |    -    | 文檔導航的權重，若未設置，則按鏈接標題排序。 |
| `nav_icon`           | object  |    -    | 顯示於文檔導航的圖標。                       |
| `nav_icon.vendor`    | string  |    -    | 圖標提供商。                                 |
| `nav_icon.name`      | string  |    -    | 圖標名稱。                                   |
| `nav_icon.color`     | string  |    -    | 圖標顏色。                                   |
| `nav_icon.className` | string  |    -    | 圖標 CSS 類名。                              |
| `redirect`           | string  |    -    | 外部文檔的 URL。                             |
