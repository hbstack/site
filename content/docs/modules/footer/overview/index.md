---
title: "Overview"
date: 2023-02-17T00:39:18+08:00
draft: false
nav_weight: 1
series:
  - Docs
categories:
  - Module
tags:
  - Footer
images:
authors:
  - RazonYang
---

The footer modules is a universal footer.

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

| Parameter    |  Type   | Default | Description                     |
| ------------ | :-----: | :-----: | ------------------------------- |
| `powered-by` | boolean | `true`  | Whether to show the powered by. |

{{< bootstrap/config-toggle filename=hugo >}}
{{% docs/modules/footer/config %}}
{{< /bootstrap/config-toggle >}}
