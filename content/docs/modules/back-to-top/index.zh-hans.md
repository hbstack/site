+++
title = "返回顶部"
date = 2023-02-04T00:15:11+08:00
draft = false
categories = ["模块"]
tags = ["返回顶部", "回到顶部"]
series = ["文档"]
images = []
authors = ["RazonYang"]
+++

又称回到顶部，一个用于返回顶部的按钮。

<!--more-->

{{% hb-module back-to-top %}}

## 站点参数

| Name              | Version  |  Type   | Require | Default  | Description                                    |
| ----------------- | :------: | :-----: | :-----: | :------: | ---------------------------------------------- |
| `animation`       | `v0.2.0` | boolean |    -    |  `true`  | 为 `false` 则禁用默认动画。                    |
| `icon_height`     | `v0.2.0` | string  |    -    |  `2em`   | 图标的高度。                                   |
| `icon_name`       | `v0.2.0` | number  |    -    | `rocket` | Bootstrap 的图标名称。                         |
| `icon_width`      | `v0.2.0` | number  |    -    |  `2em`   | 图标的宽度。                                   |
| `position_bottom` | `v0.2.0` | number  |    -    |  `1rem`  | 按钮的 `bottom` 属性值。                       |
| `position_end`    | `v0.2.0` | number  |    -    |  `1rem`  | 按钮的 `right`（LTR）或 `left`（RTL） 属性值。 |

{{< bootstrap/config-toggle filename=hugo >}}
{{% docs/modules/back-to-top/params %}}
{{< /bootstrap/config-toggle >}}
