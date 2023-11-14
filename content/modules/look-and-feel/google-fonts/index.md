---
type: docs
title: "Google Fonts Module"
linkTitle: "Google Fonts"
description: This module integrates Google fonts with HB framework, which allow specifying multiple fonts and their axises.
date: 2023-11-15T00:24:24+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: fonts
series:
  - Modules
categories:
  - Look and Feel
tags:
  - Fonts
  - Google Fonts
images:
authors:
  - HB
---

{{% hb-module "google-fonts" %}}

## Site Parameters

{{% parameters "params.yml" %}}

{{< bs/config-toggle "hugo" >}}
{{% file-content "codes/config.yml" %}}
{{< /bs/config-toggle >}}

## References

- [Browse Google Fonts](https://fonts.google.com/)
- [Forming Google Fonts API URLs](https://developers.google.com/fonts/docs/css2#forming_api_urls)
