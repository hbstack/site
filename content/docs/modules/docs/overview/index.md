---
title: "Docs Overview"
linkTitle: "Overview"
date: 2023-03-31T15:45:47+08:00
draft: false
nav_weight: 1
series:
  - Docs
categories:
  - Modules
tags:
  - Docs
images:
---

The docs module provides the basic layouts and templates for docs site, it's useful for writing project documentations, digital garden, users guides and tutorials.

<!--more-->

{{% hb-module docs %}}

## Site Parameters

| Parameter     |  Type  |   Default    | Description  |
| ------------- | :----: | :----------: | ------------ |
| `date_format` | string | `:date_long` | Date format. |

{{< bs/config-toggle params >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}

## Page Parameters

| Name                 |  Type   | Default | Description                                            |
| -------------------- | :-----: | :-----: | ------------------------------------------------------ |
| `comments`           | boolean | `true`  | Whether to display the comments.                       |
| `nav_weight`         | number  |    -    | The weight of docs nav, sort by link title if not set. |
| `nav_icon`           | object  |    -    | The icon shown on the docs nav.                        |
| `nav_icon.vendor`    | string  |    -    | The icon vendor.                                       |
| `nav_icon.name`      | string  |    -    | The icon name.                                         |
| `nav_icon.color`     | string  |    -    | The icon color.                                        |
| `nav_icon.className` | string  |    -    | The icon CSS class names.                              |
| `redirect`           | string  |    -    | URL of external documentation.                         |
