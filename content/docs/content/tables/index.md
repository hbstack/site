---
type: docs
title: "Tables"
linkTitle: "Tables"
description: "In this guide, you'll learn how to configure and create tables."
date: 2024-09-04T15:34:50+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: table
series:
  - Modules
categories:
tags:
images:
authors:
  - HB
---

## Requirements

You'll need to upgrade Hugo to `v0.134.0` or later, and enable the `markup.goldmark.parser.attribute.block`.

{{< page-resource-content "data/requirements" >}}

{{% params data="data/params.yaml" heading="Site Parameters" context="hb.tables" %}}

## Site Parameters Example

{{< page-resource-content "data/config" >}}

{{% params data="data/attrs.yaml" heading="Table Attributes" %}}

## Examples

### Default Tables

The style depends on the default configurations.

{{< page-resource-content "data/default" >}}

### Horizontal Alignments

{{< page-resource-content "data/horizontal-alignments" >}}

### Vertical Alignments

{{< page-resource-content "data/vertical-alignments" >}}

### Table with Captions

{{< page-resource-content "data/captions" >}}

### Table Styles

{{< page-resource-content "data/styles" >}}

### Bordered Tables with Border Styles

{{< page-resource-content "data/bordered" >}}

### Borderless Tables

{{< page-resource-content "data/borderless" >}}

### Small Tables

{{< page-resource-content "data/small" >}}

### Table Header Styles

{{< page-resource-content "data/thead-styles" >}}

### Table Without Header

{{< page-resource-content "data/without-header" >}}
