---
title: 文档 Utterances 评论引擎
linkTitle: "Utterances"
date: 2023-03-31T16:28:09+08:00
draft: false
series:
  - 文档
categories:
  - 模块
tags:
  - 评论
  - Utterances
images:
---

该模块为文档模块提供 [Utterances](https://utteranc.es) 评论引擎的支持，其基于 GitHub issues.

<!--more-->

{{% hb-module "docs/modules/utterances" %}}

## 站点参数

| Parameter |  Type  | Default | Description       |
| --------- | :----: | :-----: | ----------------- |
| `repo`    | string |    -    | GitHub 仓库名称。 |

[Utterances 参数](https://hugomods.com/en/docs/comment-engines/utterances/#site-parameters) 列出了更多可用的参数。

{{< bs/config-toggle params >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}
