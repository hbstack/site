---
title: "Utterances"
date: 2023-03-31T16:28:09+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - Comments
  - Utterances
images:
---

This module adds support for the [Utterances](https://utteranc.es) comments engine, which built on top of GitHub issues.

<!--more-->

{{% hb-module "blog/modules/utterances" %}}

## Site Parameters

| Parameter | Type | Default | Description |
| --------- | :--: | :-----: | ----------- |
| `repo` | string | - | The GitHub repo name. |

{{< bs/config-toggle params >}}
hb:
  blog:
    utterances:
      repo: user/site
{{< /bs/config-toggle >}}
