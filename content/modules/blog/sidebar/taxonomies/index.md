---
type: docs
title: "Blog Taxonomies Sidebar Module"
linkTitle: "Taxonomies"
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
  - Taxonomies
images:
authors:
  - HB
---

This module shows the taxonomies on the blog's sidebar.

<!--more-->

{{% hb-module "blog/modules/sidebar/taxonomies" %}}

## Site Parameters

{{% parameters params.en.toml %}}

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}
