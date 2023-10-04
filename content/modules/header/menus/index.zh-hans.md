---
type: docs
aliases:
  - /zh-hans/docs/modules/header/menus/
title: "页头菜单"
linkTitle: "菜单"
date: 2023-02-17T00:43:12+08:00
draft: false
nav_weight: 2
series:
  - 文档
categories:
  - 模块
  - 页头
tags:
  - 菜单
  - 页头菜单
images:
authors:
  - HB
---

本文将介绍如何配置页头菜单。

<!--more-->

{{< bs/alert info >}}
页头菜单最大的深度为两级。
{{< /bs/alert >}}

## 菜单集标识

页头菜单集标识为 `main`。

## 页头菜单项参数

| Parameter        |  Type   | Description                        |
| :--------------- | :-----: | :--------------------------------- |
| `header`         | string  | 下拉菜单的标题，只作用于顶级菜单。 |
| `divider`        | boolean | 为 `true` 时，作为分隔符显示。     |
| `description`    | string  | 子菜单的描述，默认为页面描述。       |
| `columns`        | number  | 子菜单的列数，最大为 `2`，当菜单数目小于 `6` 时，默认为 `1`，否则为 `2`。 |
| `icon`           | object  | 图标参数。                         |
| `icon.vendor`    | string  | 图标供应商，必填。                 |
| `icon.name`      | string  | 图标名称，必填。                   |
| `icon.color`     | string  | 图标颜色。                         |
| `icon.className` | string  | 图标 CSS 类名。                    |

详情请参阅[菜单配置]({{< ref "docs/configuration/menus" >}})。

## Example

![页头菜单示例](example.png)

{{< bs/config-toggle filename=menus >}}
{{% code-snippet example.yaml %}}
{{< /bs/config-toggle >}}

上述例子实用 Bootstrap 图标，你也可以使用其他[图标](https://hugomods.com/en/icons)，比如 Font Awesome、Feather、Tabler、Simple 等。
