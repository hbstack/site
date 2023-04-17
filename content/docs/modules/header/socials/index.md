---
title: "Header Socials Module"
linkTitle: Socials
date: 2023-02-17T00:06:59+08:00
draft: false
series:
  - Docs
categories:
  - Modules
  - Header
tags:
  - Socials
  - Social Links
images:
authors:
  - HB
---

The header's socials generates social links.

<!--more-->

{{% hb-module "header/modules/socials" %}}

## Site Parameters

| Parameter |  Type  | Default | Description                                     |
| --------- | :----: | :-----: | ----------------------------------------------- |
| `socials` | object |    -    | Mapping from [social media]({{< ref "docs/modules/socials#socials-media" >}}) to their [identifiers]({{< ref "docs/modules/socials#identifiers" >}}). |

{{< bs/config-toggle hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}
