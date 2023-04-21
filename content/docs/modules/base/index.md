---
title: "Base Module"
linkTitle: Base
date: 2023-02-18T19:18:50+08:00
draft: false
nav_weight: 40
series:
  - Docs
categories:
  - Modules
tags:
images:
authors:
  - HB
menu:
  footer:
    parent: hb-modules
    identifier: hb-base
    weight: 4
    params:
      icon:
        vendor: bs
        name: window-sidebar
---

The base module provides several basic layouts and templates for others modules, such as landing page, 404 page not found, [header]({{< relref "docs/modules/header" >}}) module and [footer]({{< relref "docs/modules/footer" >}}) module.

<!--more-->

{{% hb-module base %}}

## Features

- Landing page layout.
- 404 page not found.
- Integrate with [header]({{< relref "docs/modules/header" >}}) and [footer]({{< relref "docs/modules/footer" >}}) modules.

## Hooks

| Name            | Description             |
| --------------- | ----------------------- |
| `hb-main-begin` | Before the `.hb-main`.  |
| `hb-main-end`   | Follows the `.hb-main`. |
