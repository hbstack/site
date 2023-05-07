---
type: docs
aliases:
  - /zh-hant/docs/modules/footer/menus/
title: "頁尾菜單"
linkTitle: "菜單"
date: 2023-02-19T08:14:04+08:00
draft: false
nav_weight: 10
series:
  - 文檔
categories:
  - 模塊
  - 菜單
tags:
  - 頁尾
  - 頁尾菜單
images:
authors:
  - HB
---

本文將描述如何配置頁尾菜單。

<!--more-->

如圖所示，頁尾菜單具有兩級層次。

## 菜單集標識

頁尾菜單集標識爲 `footer`。

## 頁尾菜單項參數

| Parameter        |  Type  | Description        |
| :--------------- | :----: | :----------------- |
| `icon`           | object | 圖標參數。         |
| `icon.vendor`    | string | 圖標供應商，必填。 |
| `icon.name`      | string | 圖標名稱，必填。   |
| `icon.color`     | string | 圖標顏色。         |
| `icon.className` | string | 圖標 CSS 類名。    |

詳情請參閱[菜單配置]({{< ref "docs/configuration/menus" >}})。

## Example

![頁尾菜單示例](example.png)

{{< bs/config-toggle filename=menus >}}
{{% code-snippet example.yaml %}}
{{< /bs/config-toggle >}}

上述例子實用 Bootstrap 圖標，你也可以實用其他[圖標](https://hugomods.com/en/icons)，比如 Font Awesome、Feather、Tabler、Simple 等。
