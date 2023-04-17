---
title: "Footer Overview"
linkTitle: Overview
date: 2023-02-17T00:39:18+08:00
draft: false
nav_weight: 1
series:
  - Docs
categories:
  - Modules
tags:
  - Footer
images:
authors:
  - HB
---

This module is a universal footer, which ships with menus and some useful sub modules, i.e. social links.

<!--more-->

{{% hb-module footer %}}

## Site Configuration

| Parameter   |  Type  | Default | Description                                                               |
| ----------- | :----: | :-----: | ------------------------------------------------------------------------- |
| `title`     | string |    -    | The site's title.                                                         |
| `copyright` | string |    -    | The site's copyright, supported Markdown syntax and `{year}` placeholder. |

## Site Parameters

| Parameter     |  Type  | Default | Description                                        |
| ------------- | :----: | :-----: | -------------------------------------------------- |
| `description` | string |    -    | The site's description, supported Markdown syntax. |

## Footer's Scoped Parameters

| Parameter    |  Type   | Default | Description                          |
| ------------ | :-----: | :-----: | ------------------------------------ |
| `powered-by` | boolean | `true`  | Whether to show the powered by.      |
| `site_title` | string  |    -    | Replace site title with this if set. |

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}
