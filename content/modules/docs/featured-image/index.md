---
type: docs
aliases:
  - /en/docs/modules/docs/feature-image/
title: "Docs Featured Image Module"
linkTitle: "Featured Image"
date: 2023-03-31T16:50:16+08:00
draft: false
series:
  - Docs
categories:
  - Modules
tags:
  - Featured Image
images:
---

This module shows the featured image above the doc content if present.

<!--more-->

{{% hb-module "docs/modules/featured-image" %}}

## Featured Images Selection Order

1. The first image of the `images` parameter, usually used for `static` and external images.
2. The page image's resources that naming in pattern `feature*`, such as `feature.png`, `featured-xx.jpg`. The featured image resource will be resized in smaller size, to save user's and server's bandwidth.
