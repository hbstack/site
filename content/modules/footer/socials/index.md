---
type: docs
aliases:
  - /en/docs/modules/footer/socials/
title: "Footer Socials"
linkTitle: Socials
date: 2023-02-17T00:06:59+08:00
draft: false
series:
  - Docs
categories:
  - Modules
  - Footer
tags:
  - Socials
  - Social Links
images:
authors:
  - HB
---

The footer's socials generates social links.

<!--more-->

{{% hb-module "footer/modules/socials" %}}

## Site Parameters

| Parameter |  Type  | Default | Description                                     |
| --------- | :----: | :-----: | ----------------------------------------------- |
| `socials` | object |    -    | Mapping from [social media]({{< ref "modules/components/socials#socials-media" >}}) to their [identifiers]({{< ref "modules/components/socials#identifiers" >}}). |

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}
