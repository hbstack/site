---
type: docs
title: "HB 修订模块"
linkTitle: "修订"
description: "描述页面的额外信息，如创建日期、修改日期等。"
date: 2023-12-22T14:45:40+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: git
series:
  - 模块
categories:
  - 修订
tags:
  - Lastmod
images:
authors:
  - HB
---

{{% hb-module "revision" %}}

## 模板

模板 `hb/modules/revision/index` 接受当前页面变量作为上下文。

```go-html-template
{{- partial "hb/modules/revision/index" . }}
```

## 站点参数

{{< bs/config-toggle filename="hugo" title="站点参数" >}}
{{< code-snippet "params.yaml" >}}
{{< /bs/config-toggle >}}

| Name | Type | Default | Required | Description |
| --- | :-: | :-: | :-: | --- |
| `date_format` | string | `:date_full` | - | 另请参阅 [time.Format](https://gohugo.io/functions/time/format/)。
| `icons` | boolean | `true` | - | 是否显示图标。
| `font_size` | string | `.825rem` | - | 文本字体大小。
| `created_at` | boolean | `true` | - | 为 `false` 时，隐藏创建日期。
| `repo_service` | string | - | - | 支持 `github`。 |
| `repo_owner` | string | - | - | 仓库所有者。 |
| `repo_name` | string | - | - | 仓库名称。 |
| `repo_branch` | string | `master` | - | 默认分支。 |
| `repo_subpath` | string | - | - | 子路径。 |
| `repo_contributors` | boolean | `false` | - | 是否显示贡献者。 |
| `repo_actions` | boolean | `true` | - | 是否显示编辑、查看和历史按钮。|

您需要设置 `GITHUB_TOKEN` 环境变量和 [GitInfo](https://gohugo.io/methods/page/gitinfo/) 功能，以避免在启用 `repo_contributors` 时遇到 GitHub API 的速率限制问题。
