---
title: "菜单配置"
linkTitle: "菜单"
date: 2023-02-17T23:18:18+08:00
draft: false
series:
  - 文档
categories:
  - 配置
tags:
  - 菜单
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

本文介绍菜单的属性和如何设置菜单。

<!--more-->

## 菜单项属性

| 属性         |  类型  | 描述                                  |
| :----------- | :----: | :------------------------------------ |
| `name`       | string | 菜单名称                              |
| `identifier` | string | 菜单标识，一般用于定义多层级菜单。    |
| `weight`     | number | 菜单权重，越小优先级越高。            |
| `parent`     | string | 上级菜单的标识，也就是 `identifier`。 |
| `url`        | string | 菜单 URL。                            |
| `pre`        | string | 菜单的前置字符串。                    |
| `post`       | string | 菜单的尾部字符串。                    |
| `params`     | object | 模块范围的特定参数。                  |

## 菜单集标识

每个菜单集都有其自己的标识，比如 `main`、`footer` 等等，其与对应的模块相关。

## 如何配置菜单？

Hugo 支持两种配置菜单的方式：菜单配置文件和页面参数（又称 front matter）。

### 菜单配置文件

{{< bootstrap/config-toggle filename=menus >}}
main:
  - name: Example
    url: https://example.com
{{< /bootstrap/config-toggle >}}

> 其中 `main` 为菜单集的标识。

### 页面参数配置

当我们打算将某一页面添加到菜单集，最简便的方法是于页面设置的以下参数。

{{< bootstrap/config-toggle >}}
menu:
  main:
    weight: 2
{{< /bootstrap/config-toggle >}}

这种方式不需要额外指定菜单的名称和 URL。
