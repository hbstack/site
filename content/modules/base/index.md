---
type: docs
aliases:
  - /en/docs/modules/base/
title: "Base Module"
linkTitle: Base
date: 2023-02-18T19:18:50+08:00
draft: false
nav_weight: 40
nav_icon:
  vendor: bs
  name: window-sidebar
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

The base module provides several basic layouts and templates for other modules, such as a landing page, a custom 404 page, a [header]({{< relref "modules/header" >}}) and a [footer]({{< relref "modules/footer" >}}) module.

<!--more-->

{{% hb-module base %}}

## Features

- Landing page layout.
- Custom 404 (not found) page.
- Integrate with [header]({{< relref "modules/header" >}}) and [footer]({{< relref "modules/footer" >}}) modules.

## Hooks

| Name            | Description             |
| --------------- | ----------------------- |
| `hb-main-begin` | Before the `"main"` [block](https://gohugo.io/templates/base/#define-the-base-template) in the [HTML `<body>`](https://github.com/hbstack/hb/blob/main/layouts/_default/baseof.html).  |
| `hb-main-end`   | After the `"main"` block in the HTML `<body>`. |
