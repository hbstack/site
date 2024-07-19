---
title: "HB Framework Node.js Meta Package"
description: "A meta Node.js package that include all HB Framework requires build tools."
date: 2024-07-19T12:14:52+08:00
series:
  - News
categories:
tags:
  - Node.js
  - Node
  - Requirements
  - Autoprefixer
  - PostCSS
  - PurgeCSS
  - RTLCSS
---

## What Is This?

The `@hbstack/node-packages` is a meta package that includes all requirements of HB Framework, such as Autoprefixer, PostCSS, PurgeCSS and RTLCSS, which is used to simplify the installation of dependencies.

## Migration

Migration is optional, it won't break build of your sites, but we recommend doing so, the main advantage is that you only need to update the meta package even if HB Framework remove or add dependencies in the future.

### Remove Standalone Packages

{{< page-resource-content "data/remove-packages" >}}

### Install All-in-one Meta Package

{{< page-resource-content "data/install-meta-package" >}}
