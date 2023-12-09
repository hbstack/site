---
title: "Icons Configuration"
linkTitle: "Icons"
description: A simple guide about searching and using icons.
date: 2023-12-09T14:58:57+08:00
draft: false
series:
  - Docs
categories:
  - Configuration
tags:
  - Icons
images:
authors:
  - HB
---

Most of HB modules use [Hugo Icons Module](https://icons.hugomods.com/) to generate and render icons, such as

- [Header menus]({{< relref "modules/header/menus" >}}).
- [Footer menus]({{< relref "modules/footer/menus" >}}).
- [Docs]({{< relref "modules/docs" >}}) navigation sidebar.
- [Breadcrumb]({{< relref "modules/components/breadcrumb" >}}) icons.

## How to Search Icons?

All available icons can be found on [Hugo Icons Module](https://icons.hugomods.com/), you can also go to the official icons site for advanced search.

## Icons Parameters

Although their root parameters are different, such as `icon` or `nav_icon`, the member parameters are the same.

### `vendor`

The icons vendor name, the `bootstrap` (`bs`) is supported by default, to use [other vendors](https://hugomods.com/docs/icons/#icons-vendors), you'll need to import the corresponding modules, let's take Font Awesome icons as an example.

{{< bs/config-toggle title="Configuration" filename="hugo" >}}
module:
  imports:
    - path: github.com/hugomods/icons/vendors/font-awesome
{{< /bs/config-toggle >}}

Now you're able to use Font Awesome solid (`fas`), regular (`far`) and brands (`fab`) icons.

### `name`

The name of icon, such as `book`, `house`.

### `color`

The hex color of icon, such as `green`, `#7952B3`.

### `className`

The additional class name of icon for styling, such as `text-success`.
