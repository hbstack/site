---
type: docs
aliases:
  - /zh-hant/docs/modules/blog/giscus/
title: "博客 Giscus 評論引擎"
linkTitle: "Giscus"
date: 2023-03-31T16:20:09+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
tags:
  - 評論
  - Giscus
images:
---

該模塊爲博客模塊提供 Giscus 評論引擎支持，其基於 GitHub 討論實現。

<!--more-->

{{% hb-module "blog/modules/giscus" %}}

## 站點配置

| Parameter     |  Type  | Default | Description              |
| ------------- | :----: | :-----: | ------------------------ |
| `repo`        | string |    -    | GitHub 倉庫名稱。        |
| `repo_id`     | string |    -    | GitHub 倉庫 ID。         |
| `category_id` | string |    -    | GitHub 倉庫討論分類 ID。 |

詳情請參閱[如何配置 Giscus](https://hugomods.com/en/blog/2023/05/how-to-configure-giscus/) 和 [Giscus 參數](https://hugomods.com/en/docs/comment-engines/giscus/#site-parameters)。

{{< bs/config-toggle params >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}
