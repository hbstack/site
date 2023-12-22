---
type: docs
title: "Background Image Module"
linkTitle: "Background Image"
date: 2023-02-19T22:11:36+08:00
draft: false
nav_icon:
  vendor: bs
  name: card-image
series:
  - Docs
categories:
  - Modules
tags:
  - Image
  - Background Image
images:
authors:
  - HB
aliases:
  - /en/docs/modules/background-image/
---

As literally, this module sets the background image for pages.

<!--more-->

{{% hb-module background-image %}}

## Resources

You need to save the background image to `assets/images` with the name format: `background.*`, i.e. `background.jpg`.

Known available image formats: `webp`, `png`, `jpg`.

## Site Parameters

{{< bs/config-toggle hugo >}}
params:
  hb:
    background_image:
      modern_format: webp
{{< /bs/config-toggle >}}

Only the `webp` is supported as the `modern_format`.
