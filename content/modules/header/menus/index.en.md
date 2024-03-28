---
type: docs
aliases:
  - /en/docs/modules/header/menus/
title: "Header Menus"
linkTitle: "Menus"
date: 2023-02-17T00:43:12+08:00
draft: false
nav_weight: 2
nav_icon:
  vendor: bs
  name: list
series:
  - Docs
categories:
  - Modules
  - Header
tags:
  - Menus
  - Header Menus
images:
authors:
  - HB
---

This article describes how to configure the header's menus.

<!--more-->

{{< bs/alert info >}}
The header's menus maximum depth is limited up to two levels.
{{< /bs/alert >}}

## Menus Set Identifier

The `main` is taken as the header's menus set identifier.

## Header Menu Entry Params

| Parameter        |  Type   | Description                                                                                                        |
| :--------------- | :-----: | :----------------------------------------------------------------------------------------------------------------- |
| `header`         | string  | The header of dropdown menus, available on top level menu only.                                                    |
| `divider`        | boolean | Show the divider if `true`.                                                                                        |
| `description`    | string  | The description for sub menus only, default to page description.                                                   |
| `columns`        | number  | The column count of sub menus, up to `2`, default to `1` when the number of menus is less than `6`, otherwise `2`. |
| `icon`           | object  | The icon parameters.                                                                                               |
| `icon.vendor`    | string  | The icon's vendor, required.                                                                                       |
| `icon.name`      | string  | The icon's name, required.                                                                                         |
| `icon.color`     | string  | The icon's color.                                                                                                  |
| `icon.className` | string  | The icon's CSS class name.                                                                                         |
| `target` | string | The link [target](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a#target) attribute. |
| `rel` | string | The link [rel](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel) attribute. |

See also [Menus Configuration]({{< ref "docs/configuration/menus" >}}) and [Icons Configuration]({{< ref "docs/configuration/icons" >}}).

## Example

![Header's Menus Example](example.png)

{{< bs/config-toggle filename=menus >}}
{{% code-snippet example.yaml %}}
{{< /bs/config-toggle >}}

The example above use the Bootstrap icons, you can use other [icons vendors](https://hugomods.com/en/icons), such as Font Awesome, Feather, Tabler, Simple icons and so on.
