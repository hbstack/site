---
type: docs
title: "博客 Staticman 評論模塊"
linkTitle: "Staticman"
date: 2023-05-29T11:49:27+08:00
draft: false
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - 模塊
categories:
  - 評論
tags:
  - Staticman
images:
authors:
  - HB
---

該模塊將 [Staticman 評論模塊]({{< relref "modules/components/staticman-comments" >}})集成於文檔佈局。

<!--more-->

{{% hb-module "docs/modules/staticman" %}}

## 站點參數

`hb.docs.staticman` 將作爲 Staticman 的參數集名稱。

{{% bs/config-toggle hugo %}}
{{% code-snippet config.yaml %}}
{{% /bs/config-toggle %}}

瞭解更多關於 [Staticman 參數]({{< relref "modules/components/staticman-comments#template-parameters" >}})的信息。

## Staticman 配置

詳情請參閱 [Staticman 配置]({{< relref "modules/components/staticman-comments#staticman-配置" >}})。
