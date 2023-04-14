---
title: "滚动条模块"
linkTitle: 滚动条
date: 2023-02-16T23:48:35+08:00
draft: false
series:
  - 文档
categories:
  - 模块
tags:
  - 滚动条
images:
authors:
  - HB
---

该模块修改浏览器默认的滚动条样式。

<!--more-->

{{% hb-module scrollbar %}}

## 站点参数

| Parameter   |  Type  |  Default  | Description                      |
| ----------- | :----: | :-------: | -------------------------------- |
| `height`    | string |  `12px`   | 滚动条高度。                     |
| `width`     | string |  `12px`   | 滚动条宽度。                     |
| `track_bg`  | string | `#f8f9fa` | 滚动条轨道背景颜色。             |
| `thumb_bg`  | string | `#909294` | 滚动条滑块背景颜色。             |
| `corner_bg` | string | `#909294` | 滚动条交汇处背景颜色，如右下角。 |

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}
