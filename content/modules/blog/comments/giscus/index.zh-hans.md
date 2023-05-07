---
type: docs
aliases:
  - /zh-hans/docs/modules/blog/giscus/
title: "博客 Giscus 评论引擎"
linkTitle: "Giscus"
date: 2023-03-31T16:20:09+08:00
draft: false
series:
  - 文档
categories:
  - 模块
tags:
  - 评论
  - Giscus
images:
---

该模块为博客模块提供 Giscus 评论引擎支持，其基于 GitHub 讨论实现。

<!--more-->

{{% hb-module "blog/modules/giscus" %}}

## 站点配置

| Parameter     |  Type  | Default | Description              |
| ------------- | :----: | :-----: | ------------------------ |
| `repo`        | string |    -    | GitHub 仓库名称。        |
| `repo_id`     | string |    -    | GitHub 仓库 ID。         |
| `category_id` | string |    -    | GitHub 仓库讨论分类 ID。 |

详情请参阅[如何配置 Giscus](https://hugomods.com/en/blog/2023/05/how-to-configure-giscus/) 和 [Giscus 参数](https://hugomods.com/en/docs/comment-engines/giscus/#site-parameters)。

{{< bs/config-toggle params >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}
