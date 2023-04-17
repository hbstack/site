---
title: "页尾菜单"
linkTitle: "菜单"
date: 2023-02-19T08:14:04+08:00
draft: false
nav_weight: 10
series:
  - 文档
categories:
  - 模块
  - 菜单
tags:
  - 页尾
  - 页尾菜单
images:
authors:
  - HB
---

本文将描述如何配置页尾菜单。

<!--more-->

如图所示，页尾菜单具有两级层次。

## 菜单集标识

页尾菜单集标识为 `footer`。

## 页尾菜单项参数

| Parameter        |  Type  | Description        |
| :--------------- | :----: | :----------------- |
| `icon`           | object | 图标参数。         |
| `icon.vendor`    | string | 图标供应商，必填。 |
| `icon.name`      | string | 图标名称，必填。   |
| `icon.color`     | string | 图标颜色。         |
| `icon.className` | string | 图标 CSS 类名。    |

详情请参阅[菜单配置]({{< ref "docs/configuration/menus" >}})。

## Example

![页尾菜单示例](example.png)

{{< bs/config-toggle filename=menus >}}
{{% code-snippet example.yaml %}}
{{< /bs/config-toggle >}}

上述例子实用 Bootstrap 图标，你也可以实用其他[图标](https://hugomods.com/en/icons)，比如 Font Awesome、Feather、Tabler、Simple 等。
