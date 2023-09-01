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
| `full_width`      | boolean |    `true`    | Whether to take full width.                                                   |
| `logo_bg`         | string  |      -       | Logo background color, used by transparent logo.                              |
| `menus_alignment` | string  |   `start`    | Menus alignment: `start`, `center` and `end`.                                 |
| `sticky`          | boolean |    `true`    | Whether to sticky the header.                                                 |
| ~~`theme`~~       | string  |      -       | Removed since `v0.4.0`, see [themes]({{< relref "modules/header/themes" >}}). |

> The `logo` parameter belongs to [core module]({{< relref "modules/hb#site-parameters" >}}).

The theme is designed to collapse the menus when the width less than 1400px, and expand when the width is great than that point.

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
