---
type: docs
aliases:
  - /zh-hant/docs/modules/header/menus/
title: "頁頭菜單"
linkTitle: "菜單"
date: 2023-02-17T00:43:12+08:00
draft: false
nav_weight: 2
nav_icon:
  vendor: bs
  name: list
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
頁頭菜單最大的深度爲三級。
{{< /bs/alert >}}

## 菜單集標識

頁頭菜單集標識爲 `main`。

## 頁頭菜單項參數

| Parameter        |  Type   | Description                        |
| :--------------- | :-----: | :--------------------------------- |
| `header`         | string  | 下拉菜單的標題，只作用於頂級菜單。 |
| `divider`        | boolean | 爲 `true` 時，作爲分隔符顯示，請參閱[分割符](#分割符)。     |
| `description`    | string  | 子菜單的描述，默認爲頁面描述。       |
| `columns`        | number  | 子菜單的列數，最大爲 `2`，當菜單數目小於 `6` 時，默認爲 `1`，否則爲 `2`。 |
| `icon`           | object  | 圖標參數。                         |
| `icon.vendor`    | string  | 圖標供應商，必填。                 |
| `icon.name`      | string  | 圖標名稱，必填。                   |
| `icon.color`     | string  | 圖標顏色。                         |
| `icon.className` | string  | 圖標 CSS 類名。                    |
| `target` | string | 鏈接 [target](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a#target) 屬性。 |
| `rel` | string | 鏈接 [rel](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel) 屬性。 |

詳情請參閱[菜單配置]({{< ref "docs/configuration/menus" >}})和[圖標配置]({{< ref "docs/configuration/icons" >}})。

## 分割符

### 頂級菜單分隔符

如果頂級菜單項的 `divider` 參數設置為 `true`，則當前菜單項將成為分隔符項，不會顯示文本和鏈接。

您必須為分隔符指定 `name` 或 `identifier`，以使每個分隔符唯一。

### 次級菜單分隔符

如果二級菜單條目啟用了 `divider` 參數，則分隔符將附加到菜單末尾。

## Example

![頁頭菜單示例](example.png)

{{< bs/config-toggle filename=menus >}}
{{% code-snippet example.yaml %}}
{{< /bs/config-toggle >}}

上述例子實用 Bootstrap 圖標，你也可以使用其他[圖標](https://hugomods.com/en/icons)，比如 Font Awesome、Feather、Tabler、Simple 等。
