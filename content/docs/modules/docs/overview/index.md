---
title: "Docs Overview"
linkTitle: "Overview"
date: 2023-03-31T15:45:47+08:00
draft: false
nav_weight: 1
series:
  - Docs
categories:
  - Module
tags:
  - Docs
images:
---

The docs module provides the basic layouts and templates for docs site, it's useful for writing project documentations, digital garden, users guides and tutorials.

<!--more-->

{{% hb-module docs %}}

## Site Parameters

| Parameter     |  Type  |   Default    | Description  |
| ------------- | :----: | :----------: | ------------ |
| `date_format` | string | `:date_long` | Date format. |

{{< bs/config-toggle params >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}
