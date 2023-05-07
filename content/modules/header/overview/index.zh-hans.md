---
type: docs
aliases:
  - /zh-hans/docs/modules/header/overview/
title: 页头概览
linkTitle: "概览"
date: 2023-02-16T23:58:05+08:00
draft: false
nav_weight: 1
series:
  - 文档
categories:
  - 模块
tags:
  - 页头
images:
authors:
  - HB
---

页头模块是一个通用的顶部应用栏，其带有一些实用的子模块，比如搜索表单、社交链接、浅色/深色切换以及语言切换等。

<!--more-->

{{% hb-module header %}}

## 站点参数

| Parameter         |  Type   | Default  | Description                                   |
| ----------------- | :-----: | :------: | --------------------------------------------- |
| `brand`           | string  | 站点标题 | 品牌文本。                                    |
| `full_width`      | boolean |  `true`  | 是否全宽。                                    |
| `logo_bg`         | string  |    -     | Logo 背景色 background，用于透明背景的 Logo。 |
| `menus_alignment` | string  | `start`  | 菜单对齐：`start`、`center` 和 `end`。        |
| `sticky`          | boolean |  `true`  | 是否固定头部。                                |
| `theme`           | string  |    -     | 可用主题：`classic`。                         |

> `logo` 参数属于[核心模块]({{< relref "modules/hb#站点参数" >}})。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}

## 钩子

| Name                       | Description        |
| -------------------------- | ------------------ |
| `hb-header-nav-begin`      | 与页头导航开始处。 |
| `hb-header-togglers-begin` | 于切换按钮开始处。 |
| `hb-header-togglers-end`   | 于切换按钮结束前。 |
| `hb-header-panel`          | 页头面板。         |
