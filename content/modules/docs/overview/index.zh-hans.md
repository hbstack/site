---
type: docs
aliases:
  - /zh-hans/docs/modules/docs/overview/
title: "文档概览"
linkTitle: "概览"
date: 2023-03-31T15:45:47+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: file-richtext
series:
  - 文档
categories:
  - 模块
tags:
images:
---

文档模块为文档站点提供了基本的布局和模板，其对于编写项目文档、数字花园、用户指南、教程等十分实用。

<!--more-->

{{% hb-module docs %}}

## 站点参数

| Parameter     |  Type  |   Default    | Description |
| ------------- | :----: | :----------: | ----------- |
| `date_format` | string | `:date_long` | 日期格式。  |
| `navs_border` | boolean|    `true`    | 是否为深层导航显示左侧边框。 |
| `navs_reduce_font_size` | boolean | `true` | 是否缩小子导航的字体。 |
| `navs_sticky_scroll` | boolean | `true` | 为 `true` 时，当滚动时，祖先菜单将被固定。 |
| `navs_active_style` | string | - | 活跃的导航菜单的样式，空字符串或 `bordered`。 |

{{< bs/config-toggle params >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}

## 页面参数

| Name                 |  Type   | Default | Description                                  |
| -------------------- | :-----: | :-----: | -------------------------------------------- |
| `comments`           | boolean | `true`  | 是否显示评论。                               |
| `docs_root_section`  | boolean | `true`  | 当其于**第一个栏目**为 `false` 时，则第二个栏目将作为文档导航的根栏目。 |
| `meta`     | boolean/object | `true` | 为 `false` 时，禁用所有元信息。 |
| `meta.authors` | boolean | `true` | 为 `false` 时，禁用作者元信息。|
| `meta.date`    | boolean | `true` | 为 `false` 时，禁用日期元信息。|
| `meta.reading_time` | boolean | `true` | 为 `false` 时，禁用阅读时长元信息。|
| `meta.taxonomies` | boolean | `true` | 为 `false` 时，禁用专栏、分类和标签元信息。|
| `nav_weight`         | number  |    -    | 文档导航的权重，若未设置，则按链接标题排序。 |
| `nav_icon`           | object  |    -    | 显示于文档导航的图标。                       |
| `nav_icon.vendor`    | string  |    -    | 图标提供商。                                 |
| `nav_icon.name`      | string  |    -    | 图标名称。                                   |
| `nav_icon.color`     | string  |    -    | 图标颜色。                                   |
| `nav_icon.className` | string  |    -    | 图标 CSS 类名。                              |
| `nav_menus`          | object  |    -    | 额外的外部菜单，仅对栏目有效。                 |
| `nav_menus.name`     | object  |    -    | 额外菜单名称。                               |
| `nav_menus.url`      | object  |    -    | 额外菜单 URL。                               |
| `nav_menus.icon`     | object  |    -    | 额外菜单图标。                               |
| `redirect`           | string  |    -    | 外部文档的 URL。                             |
