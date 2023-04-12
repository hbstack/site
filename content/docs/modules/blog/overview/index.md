---
title: "Blog Module Overview"
linkTitle: "Overview"
date: 2023-03-31T15:45:47+08:00
draft: false
nav_weight: 1
series:
  - Docs
categories:
  - Module
tags:
  - Blog
images:
---

The blog module provides the basic layouts and templates for blog site.

<!--more-->

{{% hb-module blog %}}

## Site Parameters

| Parameter | Type | Default | Description |
| --------- | :--: | :-----: | ----------- |
| `paginate` | number | `9` | How many posts per list page. |
| `post_date_format` | string | `:date_long` | The date format. |
| `home` | object |  | Homepage settings. |
| `home.recent_posts` | number | `24` | The number of recent posts. |
| `home.featured_posts` | number | `10` | The number of featured posts. |
| `home.main_sections` | array | - | Posts of other sections will be filtered if set. |

{{< bs/config-toggle params >}}
hb:
  blog:
    paginate: 9
    post_date_format: ":date_long"
    home:
      recent_posts: 12
      featured_posts: 5
      main_sections:
        - docs
        - blog
{{< /bs/config-toggle >}}
