---
title: "Blog Overview"
linkTitle: "Overview"
date: 2023-03-31T15:45:47+08:00
draft: false
nav_weight: 1
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

| Parameter             |  Type   |   Default    | Description                                 |
| --------------------- | :-----: | :----------: | ------------------------------------------- |
| `paginate`            | number  |     `9`      | How many posts per list page.               |
| `post_date_format`    | string  | `:date_long` | The date format.                            |
| `post_thumbnail`      | boolean |    `true`    | Whether to display thumbnail.               |
| `archives`            | object  |              | Archives settings.                          |
| `archives.paginate`   | number  |     `30`     | How many posts per page.                    |
| `home`                | object  |              | Homepage settings.                          |
| `home.featured_posts` | number  |     `10`     | The number of featured posts.               |
| `home.main_sections`  |  array  |      -       | The main sections of posts, default to ALL. |

{{< bs/config-toggle params >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}

## Page Parameters

| Name       |  Type   | Default | Description                                       |
| ---------- | :-----: | :-----: | ------------------------------------------------- |
| `comments` | boolean | `true`  | Whether to display comments.                      |
| `featured` | boolean | `false` | Whether to display the post on homepage carousel. |
| `pinned`   | boolean | `false` | Whether to pin the post next to the carousel.     |

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
