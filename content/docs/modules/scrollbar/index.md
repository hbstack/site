---
title: "Scrollbar Module"
linkTitle: Scrollbar
date: 2023-02-16T23:48:35+08:00
draft: false
series:
  - Docs
categories:
  - Modules
tags:
  - Scrollbar
images:
authors:
  - HB
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

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}
