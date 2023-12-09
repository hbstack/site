---
title: "图标配置"
linkTitle: "图标"
description: 图标搜索和使用指南。
date: 2023-12-09T14:58:57+08:00
draft: false
series:
  - 文档
categories:
  - 配置
tags:
  - 图标
images:
authors:
  - HB
---

大多数 HB 模块都使用 [Hugo 图标模块](https://icons.hugomods.com/)来生成和渲染图标，例如：

- [页眉菜单]({{< relref "modules/header/menus" >}})。
- [页脚菜单]({{< relref "modules/footer/menus" >}})。
- [文档]({{< relref "modules/docs" >}})导航侧边栏。
- [面包屑导航]({{< relref "modules/components/breadcrumb" >}})图标。

## 如何搜索图标？

所有可用的图标都可以在 [Hugo Icons Module](https://icons.hugomods.com/) 上找到，你也可以去官方图标网站进行高级搜索。

## 图标参数

尽管它们的根参数不同，如 `icon` 或 `nav_icon`，但成员参数是相同的。

### `vendor`

图标供应商名称，默认支持 `bootstrap`（`bs`），要使用[其他供应商](https://hugomods.com/docs/icons/#icons-vendors)，需要导入相应的模块，以 Font Awesome 图标为例。

{{< bs/config-toggle title="配置" filename="hugo" >}}
module:
  imports:
    - path: github.com/hugomods/icons/vendors/font-awesome
{{< /bs/config-toggle >}}

现在你可以使用 Font Awesome 实体（`fas`）、常规（`far`）和品牌（`fab`）图标了。

### `name`

图标的名称，如 `book`、`house`。

### `color`

图标的十六进制颜色，如 `green`, `#7952B3`。

### `className`

图标样式的附加类名，如 `text-success`。
