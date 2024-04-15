---
type: docs
aliases:
  - /en/docs/modules/blog/overview/
title: "Blog Overview"
linkTitle: "Overview"
date: 2023-03-31T15:45:47+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: file-richtext
series:
  - Docs
categories:
  - Modules
tags:
  - Blog
images:
aliases:
  - /en/docs/modules/blog/archives/
---

The blog module provides the basic layouts and templates for blog site.

<!--more-->

{{% hb-module blog %}}

## Site Parameters

| Parameter                    |  Type   |        Default         | Description                                              |
| ---------------------------- | :-----: | :--------------------: | -------------------------------------------------------- |
| ~~`blog.full_width`~~                 | boolean |        `false`         | Whether take full width.                              |
| `blog.list_cols_md` | number | `2` | The number of posts per list row on `md` breakpoint.
| `blog.list_cols_lg` | number | `3` | The number of posts per list row on `lg` breakpoint.
| `blog.paginate`                   | number  |          `9`           | How many posts per list page.                            |
| `blog.post_date_format`           | string  |      `:date_long`      | The date format.                                         |
| `blog.post_thumbnail`             | boolean |         `true`         | Whether to display thumbnail.                            |
| `blog.post_thumbnail_default`     | string  | `images/thumbnail.png` | The default thumbnail image relative to `assets` folder. |
| `blog.post_thumbnail_placeholder` | string  |      Site's title      | The thumbnail placeholder.                               |
| `blog.archives`                   | object  |                        | Archives settings.                                       |
| `blog.archives.paginate`          | number  |          `30`          | How many posts per page.                                 |
| `blog.home`                       | object  |                        | Homepage settings.                                       |
| `blog.home.featured_posts`        | number  |          `10`          | The number of featured posts.                            |
| `blog.home.main_sections`         |  array  |           -            | The main sections of posts, default to ALL.              |
| `blog.home.pinned_posts_position` | string  |    Next to carousel    | The position of pinned posts, available options: `list`. |
| `blog.home.taxonomies`            | boolean |         `true`         | Whether to show the taxonomies stat on home page.        |
| `blog.toc.position` | string | `end` | `start`: on the left of content, `end`: on the right of content, `content`: above the content.
| `terms.paginate` | number | `12` | The number of posts per term list page. |

{{< bs/config-toggle params >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}

## Page Parameters

| Name       |  Type   | Default | Description                                       |
| ---------- | :-----: | :-----: | ------------------------------------------------- |
| `comments` | boolean | `true`  | Whether to display comments.                      |
| `external_url` | string |  -   | External post URL.                                |
| `featured` | boolean | `false` | Whether to display the post on homepage carousel. |
| `pinned`   | boolean | `false` | Whether to pin the post next to the carousel.     |
| `toc`      | boolean | `true`  | Whether to show the ToC (Table of Contents).      |
| `meta`     | boolean/object | `true` | When `false` then disable all meta.         |
| `meta.authors` | boolean | `true` | When `false` then disable the authors meta.    |
| `meta.date`    | boolean | `true` | When `false` then disable the date meta.       |
| `meta.reading_time` | boolean | `true` | When `false` then disable the reading time meta.    |
| `meta.taxonomies` | boolean | `true` | When `false` then disable the taxonimies meta: series, categories and tags.    |

## Archives

The blog module ships with a built-in layout for archiving posts, which grouping posts by year and month. To archive posts, you need to generate the archives sections manually.

### Create Archives Section

{{% bs/collapse "content/archives/_index.md" primary true %}}
{{% code-snippet archives %}}
{{% /bs/collapse %}}

### Create Archives Section for Year

Takes `archives/2023/` as an example.

{{% bs/collapse "content/archives/2023/_index.md" primary true %}}
{{% code-snippet archives-year %}}
{{% /bs/collapse %}}

### Create Archives Section for Month

Takes `archives/2023/01/` as an example.

{{% bs/collapse "content/archives/2023/01/_index.md" primary true %}}
{{% code-snippet archives-month %}}
{{% /bs/collapse %}}
