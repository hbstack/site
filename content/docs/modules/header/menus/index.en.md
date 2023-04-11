---
title: "Menus"
date: 2023-02-17T00:43:12+08:00
draft: false
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
  - hb
---

This article describes how to configure the header's menus.

<!--more-->

> The header's menus maximum depth is limited up to two levels.

## Menus Set Identifier

The `main` is taken as the header's menus set identifier.

## Header Menu Entry Params

| Parameter     |  Type   | Description                                                     |
| :------------ | :-----: | :-------------------------------------------------------------- |
| `header`      | string  | The header of dropdown menus, available on top level menu only. |
| `divider`     | boolean | Show the divider if `true`.                                     |
| `description` | string  | The description for sub menus only.                             |
| `icon`        | object  | The icon parameters.                                            |
| `icon.vendor` | string  | The icon's vendor, required.                                    |
| `icon.name`   | string  | The icon's name, required.                                      |
| `icon.color`  | string  | The icon's color.                                               |

See also [Menus Configuration]({{< ref "docs/configuration/menus" >}}).

## Example

![Header Menus Example](example.png)

{{< bootstrap/config-toggle filename=menus >}}
{{% docs/modules/header/menus/example %}}
{{< /bootstrap/config-toggle >}}

The example above use the Bootstrap icons, if the icons do not show up, please check if you've installed/imported the following module.

{{< bootstrap/config-toggle filename=hugo >}}
module:
  imports:
    - path: github.com/hugomods/icons/vendors/bootstrap
{{< /bootstrap/config-toggle >}}

The Bootstrap icons and other icons vendors can be found on [Hugo Icons Module](https://hugomods.com/en/icons).
