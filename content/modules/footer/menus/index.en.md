---
type: docs
aliases:
  - /en/docs/modules/footer/menus/
title: "Footer Menus"
linkTitle: "Menus"
date: 2023-02-19T08:14:04+08:00
draft: false
nav_weight: 10
nav_icon:
  vendor: bs
  name: list
series:
  - Docs
categories:
  - Modules
  - Menus
tags:
  - Footer
  - Footer Menus
images:
authors:
  - HB
---

This article describes how to configure the footer's menus.

<!--more-->

As the image shown, the footer's menus has two levels.

## Menus Set Identifier

The `footer` is taken as the footer's menus set identifier.

## Footer Menu Entry Params

| Parameter        |  Type  | Description                  |
| :--------------- | :----: | :--------------------------- |
| `icon`           | object | The icon parameters.         |
| `icon.vendor`    | string | The icon's vendor, required. |
| `icon.name`      | string | The icon's name, required.   |
| `icon.color`     | string | The icon's color.            |
| `icon.className` | string | The icon's CSS class name.   |

See also [Menus Configuration]({{< ref "docs/configuration/menus" >}}) and [Icons Configuration]({{< ref "docs/configuration/icons" >}}).

## Example

![Footer Menus Example](example.png)

{{< bs/config-toggle filename=menus >}}
{{% code-snippet example.yaml %}}
{{< /bs/config-toggle >}}

The example above use the Bootstrap icons, you can use other [icons vendors](https://hugomods.com/en/icons), such as Font Awesome, Feather, Tabler, Simple icons and so on.
