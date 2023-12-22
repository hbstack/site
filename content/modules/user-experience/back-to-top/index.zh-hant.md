+++
type = "docs"
title = "返回頂部模塊"
linkTitle = "返回頂部"
date = 2023-02-04T00:15:11+08:00
draft = false
categories = ["模塊"]
tags = ["返回頂部", "回到頂部"]
series = ["文檔"]
images = []
authors = ["HB"]
aliases = [
    "/zh-hant/docs/modules/back-to-top/"
]
[nav_icon]
vendor = "bs"
name = "arrow-up-square"
+++

又稱回到頂部，一個用於返回頂部的按鈕。

<!--more-->

{{% hb-module back-to-top %}}

## 站點參數

| Name              |  Type   | Require | Default  | Description                                    |
| ----------------- | :-----: | :-----: | :------: | ---------------------------------------------- |
| `animation`       | boolean |    -    |  `true`  | 爲 `false` 則禁用默認動畫。                    |
| `icon_height`     | string  |    -    |  `2em`   | 圖標的高度。                                   |
| `icon_name`       | number  |    -    | `rocket` | Bootstrap 的圖標名稱。                         |
| `icon_width`      | number  |    -    |  `2em`   | 圖標的寬度。                                   |
| `position_bottom` | number  |    -    |  `1rem`  | 按鈕的 `bottom` 屬性值。                       |
| `position_end`    | number  |    -    |  `1rem`  | 按鈕的 `right`（LTR）或 `left`（RTL） 屬性值。 |

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}
