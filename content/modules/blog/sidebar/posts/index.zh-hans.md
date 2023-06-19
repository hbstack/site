---
type: docs
title: "博客侧边栏文章模块"
linkTitle: "文章"
date: 2023-06-19T19:03:29+08:00
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - 模块
categories:
  - 侧边栏
tags:
  - 文章
images:
authors:
  - HB
---

本模块于博客侧边栏显示最近和精选的文章列表。

<!--more-->

{{% hb-module "blog/modules/sidebar/posts" %}}

## 站点参数

{{% parameters params.zh-hans.toml %}}

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}
