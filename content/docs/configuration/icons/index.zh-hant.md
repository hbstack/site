---
title: "圖標配置"
linkTitle: "圖標"
description: 圖標搜索和使用指南。
date: 2023-12-09T14:58:57+08:00
draft: false
series:
  - 文檔
categories:
  - 配置
tags:
  - 圖標
images:
authors:
  - HB
---

大多數 HB 模塊都使用 [Hugo 圖標模塊](https://icons.hugomods.com/)來生成和渲染圖標，例如：

- [頁眉菜單]({{< relref "modules/header/menus" >}})。
- [頁腳菜單]({{< relref "modules/footer/menus" >}})。
- [文檔]({{< relref "modules/docs" >}})導航側邊欄。
- [麵包屑導航]({{< relref "modules/components/breadcrumb" >}})圖標。

## 如何搜索圖標？

所有可用的圖標都可以在 [Hugo Icons Module](https://icons.hugomods.com/) 上找到，你也可以去官方圖標網站進行高級搜索。

## 圖標參數

儘管它們的根參數不同，如 `icon` 或 `nav_icon`，但成員參數是相同的。

### `vendor`

圖標供應商名稱，默認支持 `bootstrap`（`bs`），要使用[其他供應商](https://hugomods.com/docs/icons/#icons-vendors)，需要導入相應的模塊，以 Font Awesome 圖標為例。

{{< bs/config-toggle title="配置" filename="hugo" >}}
module:
  imports:
    - path: github.com/hugomods/icons/vendors/font-awesome
{{< /bs/config-toggle >}}

現在你可以使用 Font Awesome 實體（`fas`）、常規（`far`）和品牌（`fab`）圖標了。

### `name`

圖標的名稱，如 `book`、`house`。

### `color`

圖標的十六進制顏色，如 `green`, `#7952B3`。

### `className`

圖標樣式的附加類名，如 `text-success`。
