---
type: docs
aliases:
  - /zh-hans/docs/modules/blog/authors/
title: "博文作者"
linkTitle: 作者
date: 2023-03-31T15:59:18+08:00
draft: false
nav_weight: 10
series:
  - 文档
categories:
  - 模块
tags:
  - 作者
images:
authors:
  - HB
  - Hugo
---

博客模块默认支持多作者。

<!--more-->

## 站点配置

请确保已于 `taxonomies` 中追加了 `authors`，以启用多作者功能。

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

## 注明作者

然后于内容前言中注明作者。

{{< bs/config-toggle >}}
{{% code-snippet authors.yaml %}}
{{< /bs/config-toggle >}}

现在该页面由 `HB` 和 `Hugo` 合著，将会于页面中显示。

## Authors Parameters

详细地介绍作者。

| Parameter     |  Type  | Description                                                                |
| ------------- | :----: | -------------------------------------------------------------------------- |
| `title`       | string | 作者名称。                                                                 |
| `description` | string | 作者描述。                                                                 |
| `email_hash`  | string | 邮箱的 `md5` 哈希值，用于生成 Gravatar 头像，也可以使用下面的 `images`。 |
| `images`      | array  | 第一张图片将作为头像。                                                     |
| `socials`     | object | 另请参阅[社交链接]({{< ref "modules/components/socials" >}})。                   |

## Authors Example

以 `HB` 为例。

{{< bs/collapse "content/authors/hb/_index.md" primary true >}}
{{< bs/config-toggle >}}
{{% code-snippet author %}}
{{< /bs/config-toggle >}}
{{< /bs/collapse >}}

> 将 `socials._color` 设置为 `false` 以禁用彩色图标。
