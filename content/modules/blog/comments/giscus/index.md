---
type: docs
aliases:
  - /en/docs/modules/blog/giscus/
title: "Blog Giscus Comments Engine"
linkTitle: "Giscus"
date: 2023-03-31T16:20:09+08:00
draft: false
series:
  - Docs
categories:
  - Modules
tags:
  - Comments
  - Giscus
images:
---

This module adds support for the [Giscus](https://giscus.app) comments engine, which powered by GitHub Discussions.

<!--more-->

{{% hb-module "blog/modules/giscus" %}}

## Site Parameters

| Parameter     |  Type  | Default | Description                         |
| ------------- | :----: | :-----: | ----------------------------------- |
| `repo`        | string |    -    | The GitHub repo name.               |
| `repo_id`     | string |    -    | The GitHub repo ID.                 |
| `category_id` | string |    -    | The GitHub discussions category ID. |

Read more on [How to Configure Giscus](https://hugomods.com/en/blog/2023/05/how-to-configure-giscus/) and [Giscus Parameters](https://hugomods.com/en/docs/comment-engines/giscus/#site-parameters).

{{< bs/config-toggle params >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}
