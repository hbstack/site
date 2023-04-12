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
  - HB
---

The header module is a universal top app bar that ships with some useful sub modules, such as search form, social links, light/dark mode toggle and language picker.

<!--more-->

{{% hb-module header %}}

## Site Parameters

| Parameter    |  Type   | Default  | Description           |
| ------------ | :-----: | :------: | --------------------- |
| `brand`      | string  | 站点标题 | 品牌文本。            |
| `theme`      | string  |    -     | 可用主题：`classic`。 |
| `full_width` | boolean |  `true`  | 是否全宽。            |
| `sticky`     | boolean |  `true`  | 是否固定头部。        |

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}
