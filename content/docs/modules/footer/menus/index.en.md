---
title: "Menus"
date: 2023-02-19T08:14:04+08:00
draft: false
series:
  - Docs
categories:
  - Module
  - Menus
tags:
  - Footer
  - Footer Menus
images:
authors:
  - hb
---

This article describes how to configure the footer's menus.

<!--more-->

As the image shown, the footer's menus has two levels.

## Menus Set Identifier

The `footer` is taken as the footer's menus set identifier.

## Footer Menu Entry Params

| Parameter     |  Type   | Description                                                     |
| :------------ | :-----: | :-------------------------------------------------------------- |
| `icon`        | object  | The icon parameters.                                            |
| `icon.vendor` | string  | The icon's vendor，required.                                    |
| `icon.name`   | string  | The icon's name, required.                                      |
| `icon.color`  | string  | The icon's color.                                               |

See also [Menus Configuration]({{< ref "docs/configuration/menus" >}}).

## Example

![Footer Menus Example](example.png)

{{< bootstrap/config-toggle filename=menus >}}
{{% docs/modules/footer/menus/example %}}
{{< /bootstrap/config-toggle >}}

The example above use the Bootstrap icons, if the icons do not show up, please check if you've installed/imported the following module.

{{< bootstrap/config-toggle filename=hugo >}}
module:
  imports:
    - path: github.com/hugomods/icons/vendors/bootstrap
{{< /bootstrap/config-toggle >}}

The Bootstrap icons and other icons vendors can be found on [Hugo Icons Module](https://hugomods.com/en/icons).
