---
title: "配置结构"
date: 2023-02-17T23:18:18+08:00
draft: false
nav_weight: 1
series:
  - 文档
categories:
  - 配置
tags:
images:
authors:
  - RazonYang
menu:
  footer:
    parent: docs
    weight: 34
    params:
      icon:
        vendor: fas
        name: folder-tree
---

本文将尽量简单地介绍 Hugo 的配置结构，以便你能更好地理解文档中的配置，即使你刚刚接触 Hugo。

<!--more-->

## 配置格式

虽然 Hugo 支持 `TOML`、`YAML` 和 `JSON`，不过笔者建议使用 `TOML` 或 `YAML`，因为 `JSON` 并不支持注释。

## 配置名称

自 Hugo `0.110.0` 版本后，Hugo 将优先使用 `hugo.*` 配置文件，尽管 `config.*` 仍起作用，不过笔者建议使用 `hugo.*` 作为配置名称，以更好地区分 Hugo 和其他项目的配置。

> HB 要求 Hugo `0.110.0` 以上版本，文档中的配置均以 `hugo.*` 命名。

## 单配置文件

单配置文件是指在项目根目录下的 `hugo.*`。

> Hugo 也可以通过 `--config` 参数指定多个配置文件：`hugo --config a.toml,b.toml,c.toml`。

## 配置目录

虽然单配置文件简单便捷，但缺点也很明显，一旦配置过多，就难以阅读，在多环境、多语言的情况下更为糟糕，而配置目录可以更好地应对这种情况。

{{< bootstrap/alert info >}}
HB 文档均使用配置目录这一方式。
{{< /bootstrap/alert >}}

```sh
{{% docs/configuration/structure/tree %}}
```

如上所示，站点们定义了四种环境：

| 环境          | 描述                                     |
| ------------- | ---------------------------------------- |
| `_default`    | 默认配置，会被合并到最终的配置中去。     |
| `development` | 开发环境，`hugo server` 默认环境。       |
| `staging`     | 自定义环境，可以通过 `-e staging` 加载。 |
| `production`  | 生产环境，`hugo` 默认环境。              |

通常我们需要在本地预览其他环境，如生产环境，只需要通过 `hugo server -e production -b http://localhost:1313 -p 1313`。

| 配置文件      | 描述          |
| ------------- | ------------- |
| `hugo.*`      | Hugo 配置文件 |
| `params.*`    | 参数配置      |
| `menus.*`     | 菜单配置      |
| `languages.*` | 语言配置      |

Hugo 支持对某一特定语言进行配置，如上所展示的 `menus.en.toml`、`menus.zh-hans.toml`、`params.en.toml` 和 `params.zh-hans.toml`。

{{< bootstrap/alert warning >}}
{{% markdownify %}}
请不要于 `languages.*` 和 `params.*.*` 中更改 `hb*` 和 `hugopress*` 相关的配置。
{{% /markdownify %}}
{{< /bootstrap/alert >}}
