---
type: docs
aliases:
  - /zh-hant/docs/modules/header/menus/
title: "頁頭菜單"
linkTitle: "菜單"
date: 2023-02-17T00:43:12+08:00
draft: false
nav_weight: 2
series:
  - 文檔
categories:
  - 模塊
  - 頁頭
tags:
  - 菜單
  - 頁頭菜單
images:
authors:
  - HB
---

本文將介紹如何配置頁頭菜單。

<!--more-->

{{< bs/alert info >}}
頁頭菜單最大的深度爲兩級。
{{< /bs/alert >}}

## 菜單集標識

頁頭菜單集標識爲 `main`。

## 頁頭菜單項參數

| Parameter        |  Type   | Description                        |
| :--------------- | :-----: | :--------------------------------- |
| `header`         | string  | 下拉菜單的標題，只作用於頂級菜單。 |
| `divider`        | boolean | 爲 `true` 時，作爲分隔符顯示。     |
| `description`    | string  | 子菜單的描述。                     |
| `icon`           | object  | 圖標參數。                         |
| `icon.vendor`    | string  | 圖標供應商，必填。                 |
| `icon.name`      | string  | 圖標名稱，必填。                   |
| `icon.color`     | string  | 圖標顏色。                         |
| `icon.className` | string  | 圖標 CSS 類名。                    |

詳情請參閱[菜單配置]({{< ref "docs/configuration/menus" >}})。

## Example

![頁頭菜單示例](example.png)

{{< bs/config-toggle filename=menus >}}
{{% code-snippet example.yaml %}}
{{< /bs/config-toggle >}}

上述例子實用 Bootstrap 圖標，你也可以使用其他[圖標](https://hugomods.com/en/icons)，比如 Font Awesome、Feather、Tabler、Simple 等。
