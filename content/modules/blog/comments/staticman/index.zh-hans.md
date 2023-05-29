---
type: docs
title: "博客 Staticman 评论模块"
linkTitle: "Staticman"
date: 2023-05-29T11:49:27+08:00
draft: false
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - 模块
categories:
  - 评论
tags:
  - Staticman
images:
authors:
  - HB
---

该模块将 [Staticman 评论模块]({{< relref "modules/components/staticman-comments" >}})集成于博客布局。

<!--more-->

{{% hb-module "blog/modules/staticman" %}}

## 站点参数

`hb.blog.staticman` 将作为 Staticman 的参数集名称。

{{% bs/config-toggle hugo %}}
{{% code-snippet config.yaml %}}
{{% /bs/config-toggle %}}

了解更多关于 [Staticman 参数]({{< relref "modules/components/staticman-comments#template-parameters" >}})的信息。

## Staticman 配置

详情请参阅 [Staticman 配置]({{< relref "modules/components/staticman-comments#staticman-配置" >}})。
