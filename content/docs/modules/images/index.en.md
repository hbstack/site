---
title: "Hugo Images Module"
linkTitle: "Images"
date: 2023-03-14T21:21:03+08:00
draft: false
series:
  - Docs
categories:
tags:
images:
authors:
  - RazonYang
---

Hugo images module for processing images via URL query string and fragment.

<!--more-->

{{% module "github.com/hugomods/images" %}}

## Site Configuration

| Name | Type | Default | Description |
| ---- | :--: | ------- | ----------- |
| `alignment_center_class_name` | String | `d-block text-center` | The class name of `<picture>` when align to center. |
| `alignment_end_class_name` | String | `float-end ms-2` | The class name of `<picture>` when align to end (right). |
| `alignment_start_class_name` | String | `float-start me-2` | The class name of `<picture>` when align to start (left). |
| `class_name` | String | `img-fluid` | The class name of `<img>`. |
| `modern_format ` | String | `webp` | Generate modern format version of image, empty to disable. |

{{< bootstrap/config-toggle >}}
{{< docs/modules/images/config >}}
{{< /bootstrap/config-toggle >}}

The class names compatible with Bootstrap by default, you may need adjust it to your CSS if you're not using Bootstrap.

## Usage

Please checkout the [images]({{< ref "docs/content/images" >}}) section for details.
