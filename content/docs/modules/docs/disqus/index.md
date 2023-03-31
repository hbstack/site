---
title: "Disqus"
date: 2023-03-31T16:42:09+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - Comments
  - Disqus
images:
---

This module adds support for the [Disqus](https://disqus.com) comments engine.

<!--more-->

{{% hb-module "docs/modules/disqus" %}}

## Site Configuration

| Parameter | Type | Default | Description |
| --------- | :--: | :-----: | ----------- |
| `disqusShortname` | string | - | The Disqus site identifier. |

{{< bootstrap/config-toggle hugo >}}
disqusShortname: XXXXX
{{< /bootstrap/config-toggle >}}
