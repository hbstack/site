---
type: docs
aliases:
  - /en/docs/modules/header/overview/
title: "Header Overview"
linkTitle: "Overview"
description: The header module is a universal top app bar that ships with some useful sub modules, such as search form, social links, light/dark mode toggle and language picker.
date: 2023-02-16T23:58:05+08:00
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
  - Header
images:
authors:
  - HB
---

{{% hb-module header %}}

## Site Parameters

| Parameter         |  Type   |   Default    | Description                                                                   |
| ----------------- | :-----: | :----------: | ----------------------------------------------------------------------------- |
| `brand`           | string  | Site's title | The brand text.                                                               |
| `breakpoint` | string | `lg` | Collapse the header when screen width is less than the breakpoint, otherwise expand. Available options: `lg`, `xl`, `xxl`. |
| `full_width`      | boolean |    `true`    | Whether to take full width.                                                   |
| `logo`            | boolean |      -       | When `false` hide the logo.                                                   |
| `logo_bg`         | string  |      -       | Logo background color, used by transparent logo.                              |
| `main_brand`      | object  |      -       | Main brand.                                                                   |
| `main_brand.title` | string |      -       | Main brand title.                                                             |
| `main_brand.logo` | string  |      -       | Main brand logo, relative to `assets`.                                        |
| `main_brand.url`  | string  |      -       | Main brand URL.                                                               |
| `main_brand.hide_title` | boolean | `false`| Whether to hide main brand title.                                             |
| `menus_alignment` | string  |   `start`    | Menus alignment: `start`, `center` and `end`.                                 |
| `sticky`          | boolean |    `true`    | Whether to sticky the header.                                                 |
| ~~`theme`~~       | string  |      -       | Removed since `v0.4.0`, see [themes]({{< relref "modules/header/themes" >}}). |

> The `logo` parameter belongs to [core module]({{< relref "modules/hb#site-parameters" >}}).

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}

## Hooks

| Name                       | Description                           |
| -------------------------- | ------------------------------------- |
| `hb-header-nav-begin`      | At the beginning of header nav.       |
| `hb-header-togglers-begin` | At the beginning of toggler buttons.  |
| `hb-header-togglers-end`   | Before the ending of toggler buttons. |
| `hb-header-panel`          | Header panel.                         |
