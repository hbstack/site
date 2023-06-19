---
type: docs
title: "Blog Sidebar Posts Module"
linkTitle: "Posts"
date: 2023-06-19T19:03:29+08:00
draft: true
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - Modules
categories:
  - Sidebar
tags:
  - Posts
images:
authors:
  - HB
---

This module shows the recent and featured posts on the blog's sidebar.

<!--more-->

{{% hb-module "blog/modules/sidebar/posts" %}}

## Site Parameters

{{% parameters params.en.toml %}}

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}
