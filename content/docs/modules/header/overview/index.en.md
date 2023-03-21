---
title: "Overview"
date: 2023-02-16T23:58:05+08:00
draft: false
nav_weight: 1
series:
  - Docs
categories:
  - Module
tags:
  - Header
images:
authors:
  - RazonYang
---

The header module is a universal top app bar that ships with some useful sub modules, such as social links, light/dark mode toggle and language picker.

<!--more-->

{{% hb-module header %}}

## Site Parameters

| Parameter    |  Type   |   Default    | Description                   |
| ------------ | :-----: | :----------: | ----------------------------- |
| `brand`      | string  | Site's title | The brand text.               |
| `theme`      | string  |      -       | Available themes: `classic`.  |
| `full_width` | boolean |    `true`    | Whether to take full width.   |
| `sticky`     | boolean |    `true`    | Whether to sticky the header. |

{{< bootstrap/config-toggle filename=hugo >}}
{{% docs/modules/header/params %}}
{{< /bootstrap/config-toggle >}}
