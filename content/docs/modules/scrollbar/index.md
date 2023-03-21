---
title: "Scrollbar"
date: 2023-02-16T23:48:35+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - Scrollbar
images:
authors:
  - RazonYang
---

The scrollbar module changes the default browser scrollbar style.

<!--more-->

{{% hb-module scrollbar %}}

## Site Parameters

| Parameter   |  Type  |  Default  | Description                     |
| ----------- | :----: | :-------: | ------------------------------- |
| `height`    | string |  `12px`   | The height of scrollbar.        |
| `width`     | string |  `12px`   | The width of scrollbar.         |
| `track_bg`  | string | `#f8f9fa` | The background color of track.  |
| `thumb_bg`  | string | `#909294` | The background color of thumb.  |
| `corner_bg` | string | `#909294` | The background color of corner. |

{{< bootstrap/config-toggle filename=hugo >}}
{{% docs/modules/scrollbar/params %}}
{{< /bootstrap/config-toggle >}}
