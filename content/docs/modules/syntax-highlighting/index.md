---
title: "Syntax Highlighting"
date: 2023-02-15T10:11:42+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - Syntax Highlighting
authors:
  - RazonYang
---

HB provides various of syntax highlighting modules, this article lists the supported styles.

<!--more-->

## Requirements

To use syntax highlighting modules, you'll need to disable the `markup.highlight.noClasses`.

{{< bootstrap/config-toggle filename=hugo >}}
markup:
  highlight:
    noClasses: false
{{< /bootstrap/config-toggle >}}

## Modules

[Preview all styles online](https://xyproto.github.io/splash/docs/all.html).

{{% bootstrap/alert warning %}}
{{% markdownify %}}
The module path doesn't contain underscore (`_`), you'll need to replace it with dash (`-`). i.e. `algol_nu` should be replaced with `algol-nu`.
{{% /markdownify %}}
{{% /bootstrap/alert %}}

{{% syntax-highlighting-modules %}}
