---
title: "Socials"
date: 2023-02-17T00:06:59+08:00
draft: false
series:
  - Docs
categories:
  - Module
  - Header
tags:
  - Socials
  - Social Links
images:
authors:
  - RazonYang
---

The header's socials generates social links.

<!--more-->

{{% hb-module "header/modules/socials" %}}

## Site Parameters

| Parameter |  Type  | Default | Description                                     |
| --------- | :----: | :-----: | ----------------------------------------------- |
| `socials` | object |    -    | Mapping from [social media]({{< ref "docs/modules/socials#socials-media" >}}) to their [identifiers]({{< ref "docs/modules/socials#identifiers" >}}). |

{{< bootstrap/config-toggle filename=hugo >}}
{{% docs/modules/header/socials/params %}}
{{< /bootstrap/config-toggle >}}
