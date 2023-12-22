---
type: docs
aliases:
  - /zh-hans/docs/modules/blog/overview/
title: "博客概览"
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
  - 博客
images:
aliases:
  - /zh-hans/docs/modules/blog/archives/
---

博客模块为博客站点提供了基本的布局和模板。

<!--more-->

{{% hb-module blog %}}

## 站点参数

| Parameter                    |  Type   |        Default         | Description                          |
| ---------------------------- | :-----: | :--------------------: | ------------------------------------ |
| ~~`blog.full_width`~~                 | boolean |        `false`         | 是否全宽。                             |
| `blog.list_cols_md` | number | `2` | 于 `md` 断点下，列表每行的文章数目。
| `blog.list_cols_lg` | number | `3` | 于 `lg` 断点下，列表每行的文章数目。
| `blog.paginate`                   | number  |          `9`           | 每页博文数量。                       |
| `blog.post_date_format`           | string  |      `:date_long`      | 博文日期格式。                       |
| `blog.post_thumbnail`             | boolean |         `true`         | 是否显示缩略图。                     |
| `blog.post_thumbnail_default`     | string  | `images/thumbnail.png` | 相对于 `assets` 文件夹的默认缩略图。 |
| `blog.post_thumbnail_placeholder` | string  |        站点标题        | 缩略图占位符。                       |
| `blog.archives`                   | object  |                        | 归档设置。                           |
| `blog.archives.paginate`          | number  |          `30`          | 归档每页博文数量。                   |
| `blog.home`                       | object  |                        | 博客首页设置。                       |
| `blog.home.featured_posts`        | number  |          `10`          | 特刊博文数量。                       |
| `blog.home.main_sections`         |  array  |           -            | 博文栏目，默认所有栏目。             |
| `blog.home.pinned_posts_position` | string  |        幻灯片右侧        | 置顶文章的位置，可选项：`list`。     |
| `blog.home.taxonomies`            | boolean |         `true`         | 是否于首页显示分类统计。             |
| `blog.toc.position` | string | `end` | `start`：内容左侧、`end`：内容右侧、`content`：内容上方。
| `terms.paginate` | number | `12` | 分类列表博文数量。 |

{{< bs/config-toggle params >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}

## 页面参数

| Name       |  Type   | Default | Description                    |
| ---------- | :-----: | :-----: | ------------------------------ |
| `comments` | boolean | `true`  | 是否显示评论。                 |
| `featured` | boolean | `false` | 是否于首页幻灯片中显示该文章。 |
| `pinned`   | boolean | `false` | 是否于首页置顶该文章。         |

## 归档

博客博客内置了文章归档布局，其可以按年份和月份进行归档。你需要手动创建栏目以归档文章。

### 创建归档栏目

{{% bs/collapse "content/archives/_index.md" primary true %}}
{{% code-snippet archives %}}
{{% /bs/collapse %}}

### 创建按年归档栏目

以 `archives/2023/` 为例。

{{% bs/collapse "content/archives/2023/_index.md" primary true %}}
{{% code-snippet archives-year %}}
{{% /bs/collapse %}}

### 创建按月归档栏目

以 `archives/2023/01/` 为例。

{{% bs/collapse "content/archives/2023/01/_index.md" primary true %}}
{{% code-snippet archives-month %}}
{{% /bs/collapse %}}
