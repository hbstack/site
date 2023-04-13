---
title: "Menus"
date: 2023-02-17T00:43:12+08:00
draft: false
nav_weight: 2
series:
  - Docs
categories:
  - Module
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

| Parameter        |  Type   | Description                                                     |
| :--------------- | :-----: | :-------------------------------------------------------------- |
| `header`         | string  | The header of dropdown menus, available on top level menu only. |
| `divider`        | boolean | Show the divider if `true`.                                     |
| `description`    | string  | The description for sub menus only.                             |
| `icon`           | object  | The icon parameters.                                            |
| `icon.vendor`    | string  | The icon's vendor, required.                                    |
| `icon.name`      | string  | The icon's name, required.                                      |
| `icon.color`     | string  | The icon's color.                                               |
| `icon.className` | string  | The icon's CSS class name.                                      |

See also [Menus Configuration]({{< ref "docs/configuration/menus" >}}).

## Example

![Header Menus Example](example.png)

{{< bs/config-toggle filename=menus >}}
{{% code-snippet example.yaml %}}
{{< /bs/config-toggle >}}

The example above use the Bootstrap icons, you can use other [icons vendors](https://hugomods.com/en/icons), such as Font Awesome, Feather, Tabler, Simple icons and so on.
