---
title: Blog Utterances Comments Engine
linkTitle: "Utterances"
date: 2023-03-31T16:28:09+08:00
draft: false
series:
  - Docs
categories:
  - Modules
tags:
  - Comments
  - Utterances
images:
---

This module adds support for the [Utterances](https://utteranc.es) comments engine, which built on top of GitHub issues.

<!--more-->

{{% hb-module "blog/modules/utterances" %}}

## Site Parameters

| Parameter |  Type  | Default | Description           |
| --------- | :----: | :-----: | --------------------- |
| `repo`    | string |    -    | The GitHub repo name. |

More available parameters listed on [Utterances Parameters](https://hugomods.com/en/docs/comment-engines/utterances/#site-parameters).

{{< bs/config-toggle params >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}
