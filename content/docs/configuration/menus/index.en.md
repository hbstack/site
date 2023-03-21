---
title: "Menus Configuration"
linkTitle: "Menus"
date: 2023-02-17T23:18:18+08:00
draft: false
series:
  - Docs
categories:
  - Configuration
tags:
  - Menus
images:
authors:
  - RazonYang
menu:
  footer:
    parent: docs
    weight: 35
    params:
      icon:
        vendor: fas
        name: bars
---

This article describes the properties of the menu entry and how to config the menus.

<!--more-->

## Menu Entry Properties

| Property     |  Type  | Description                                                  |
| :----------- | :----: | :----------------------------------------------------------- |
| `name`       | string | The name of menu.                                            |
| `identifier` | string | The ID of menu.                                              |
| `weight`     | number | The weight of menu that used for sorting in ascending order. |
| `parent`     | string | The `identifier` of parent menu entry.                       |
| `url`        | string | The URL of menu.                                             |
| `pre`        | string | The leading string before menu name.                         |
| `post`       | string | The trailing string after menu name.                         |
| `params`     | object | Module scoped parameters.                                    |

## Menu Set Identifiers

Each menu set has its own identifier, such as `main`, `footer`, etc., which is associated with the corresponding module.

## How to Configure Menus?

Hugo supports two ways of configuring menus: menu configuration files and page menus parameters (aka front matter).

### Menu Configuration Files

{{< bootstrap/config-toggle filename=menus >}}
main:
  - name: Example
    url: https://example.com
{{< /bootstrap/config-toggle >}}

> The `main` is the identifier of the menu set.

## Page Menu Parameters

When we want to add a page to the menu set, the easiest way is to set the following parameters on the page.

{{< bootstrap/config-toggle >}}
menu:
  main:
    weight: 2
{{< /bootstrap/config-toggle >}}

It's no need to explicitly specify the menu name and URL.
