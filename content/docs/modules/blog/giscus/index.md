---
title: "Giscus"
date: 2023-03-31T16:20:09+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - Comments
  - Giscus
images:
---

This module adds support for the [Giscus](https://giscus.app) comments engine, which powered by GitHub Discussions.

<!--more-->

{{% hb-module "blog/modules/giscus" %}}

## Site Parameters

| Parameter | Type | Default | Description |
| --------- | :--: | :-----: | ----------- |
| `repo` | string | - | The GitHub repo name. |
| `repo_id` | string | - | The GitHub repo ID. |
| `category_id` | string | - | The GitHub discussions category ID. |

Those parameter's values can be fetched on [Giscus](https://giscus.app).

{{< bs/config-toggle params >}}
hb:
  blog:
    giscus:
      repo: user/site
      repo_id: XXXXXXXXXXXX
      category_id: XXXXXXXXXXXXXXXXXXXX
{{< /bs/config-toggle >}}
