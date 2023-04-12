---
title: "Docs Module Overview"
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

The docs module provides the basic layouts and templates for blog site.

<!--more-->

{{% hb-module docs %}}

## Site Parameters

| Parameter | Type | Default | Description |
| --------- | :--: | :-----: | ----------- |
| `paginate` | number | `9` | How many posts per list page. |

{{< bs/config-toggle params >}}
hb:
  docs:

{{< /bs/config-toggle >}}
