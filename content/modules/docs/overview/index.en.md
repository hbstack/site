---
type: docs
aliases:
  - /en/docs/modules/docs/overview/
title: "Docs Overview"
linkTitle: "Overview"
date: 2023-03-31T15:45:47+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: file-richtext
series:
  - Docs
categories:
  - Modules
tags:
  - Docs
images:
---

The docs module provides the basic layouts and templates for docs site, it's useful for writing project documentation, digital garden, users guides and tutorials.

<!--more-->

{{% hb-module docs %}}

## Site Parameters

| Parameter     |  Type  |   Default    | Description  |
| ------------- | :----: | :----------: | ------------ |
| `date_format` | string | `:date_long` | Date format. |
| `navs_border` | boolean|    `true`    | Whether to show the left border for sub navs. |
| `navs_reduce_font_size` | boolean | `true` | Whether to reduce submenu's font size. |
| `navs_sticky_scroll` | boolean | `true` | When `true`, the ancestors will be sticky on scroll. |
| `navs_active_style` | string | - | Active style for navs item, empty or `bordered`. |

{{< bs/config-toggle params >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}

## Page Parameters

| Name                 |  Type   | Default | Description                                            |
| -------------------- | :-----: | :-----: | ------------------------------------------------------ |
| `comments`           | boolean | `true`  | Whether to display the comments.                       |
| `meta`     | boolean/object | `true` | When `false` then disable all meta.         |
| `meta.authors` | boolean | `true` | When `false` then disable the authors meta.    |
| `meta.date`    | boolean | `true` | When `false` then disable the date meta.       |
| `meta.reading_time` | boolean | `true` | When `false` then disable the reading time meta.    |
| `meta.taxonomies` | boolean | `true` | When `false` then disable the taxonimies meta: series, categories and tags.    |
| `nav_weight`         | number  |    -    | The weight of docs nav, sort by link title if not set. |
| `nav_icon`           | object  |    -    | The icon shown on the docs nav.                        |
| `nav_icon.vendor`    | string  |    -    | The icon vendor.                                       |
| `nav_icon.name`      | string  |    -    | The icon name.                                         |
| `nav_icon.color`     | string  |    -    | The icon color.                                        |
| `nav_icon.className` | string  |    -    | The icon CSS class names.                              |
| `nav_menus`          | object  |    -    | Extra external menus, works only on sections.          |
| `nav_menus.name`     | object  |    -    | Extra menu name.                                       |
| `nav_menus.url`      | object  |    -    | Extra menu URL.                                        |
| `nav_menus.icon`     | object  |    -    | Extra menu's icons.                                    |
| `redirect`           | string  |    -    | URL of external documentation.                         |
