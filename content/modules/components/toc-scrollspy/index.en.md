---
type: docs
title: "HB ToC Scollspy Module"
linkTitle: "ToC Scollspy"
description: "Automatically update table of content navigation to indicate which heading is currently active in the viewport."
date: 2024-09-21T21:45:40+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: arrow-down-up
series:
  - Modules
categories:
tags:
  - ToC
  - Table of Content
  - Scollspy
images:
authors:
  - HB
---

{{% hb-module "toc-Scollspy" %}}

To use this module, you can either using existing modules, such as [Blog's ToC Scrollspy](/modules/blog/toc-scrollspy) and [Docs's ToC Scrollspy](/modules/docs/toc-scrollspy), or [integrating the module into your custom layout](#integration).

## Integration

Firstly, import the module, and then append the `data-bs-spy` and `data-bs-target` attributes into the content container element.

{{< page-resource-content "data/integration" >}}

{{% params data="data/params.yaml" heading="Site Parameters" context="hb.toc_scrollspy" %}}
