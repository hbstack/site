---
type: docs
title: "滾動條模塊"
linkTitle: 滾動條
date: 2023-02-16T23:48:35+08:00
draft: false
nav_icon:
  vendor: bs
  name: arrow-down-up
series:
  - 文檔
categories:
  - 模塊
tags:
  - 滾動條
images:
authors:
  - HB
aliases:
  - /zh-hant/docs/modules/scrollbar/
---

該模塊修改瀏覽器默認的滾動條樣式。

<!--more-->

{{% hb-module scrollbar %}}

## 站點參數

| Parameter   |  Type  |  Default  | Description                      |
| ----------- | :----: | :-------: | -------------------------------- |
| `height`    | string |  `12px`   | 滾動條高度。                     |
| `width`     | string |  `12px`   | 滾動條寬度。                     |
| `track_bg`  | string | `#f8f9fa` | 滾動條軌道背景顏色。             |
| `thumb_bg`  | string | `#909294` | 滾動條滑塊背景顏色。             |
| `corner_bg` | string | `#909294` | 滾動條交匯處背景顏色，如右下角。 |

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}
