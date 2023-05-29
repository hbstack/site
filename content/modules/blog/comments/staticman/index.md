---
type: docs
title: "Blog Staticman Comments Module"
linkTitle: "Staticman"
date: 2023-05-29T11:49:27+08:00
draft: false
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - Modules
categories:
  - Comments
tags:
  - Staticman
images:
authors:
  - HB
---

This module integrate the [Staticman comments module]({{< relref "modules/components/staticman-comments" >}}) with blog layout.

<!--more-->

{{% hb-module "blog/modules/staticman" %}}

## Site Parameters

The `hb.blog.staticman` is taken as the name of Staticman parameters set.

{{% bs/config-toggle hugo %}}
{{% code-snippet config.yaml %}}
{{% /bs/config-toggle %}}

Learn more on [Staticman parameters]({{< relref "modules/components/staticman-comments#template-parameters" >}}).

## Staticman Configuration

See also [Staticman Configuration]({{< relref "modules/components/staticman-comments#staticman-configuration" >}}).
