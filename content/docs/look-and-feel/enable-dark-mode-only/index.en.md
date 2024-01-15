---
title: "Enable Dark Mode Only"
description: "It makes sense to remove the light and auto modes/themes and keep only the dark mode to suit your tastes."
date: 2024-01-15T13:12:57+08:00
draft: false
nav_icon:
  vendor: bs
  name: stars
series:
  - Docs
categories:
  - Look and Feel
tags:
  - Light Mode
  - Light Theme
  - Auto Mode
  - Dark Mode
  - Dark Theme
images:
authors:
  - HB
---

## Remove Header Theme Toggle Module

Firstly, you should remove the `github.com/hbstack/header/modules/theme-toggle` module.

See [replace meta module]({{< relref "blog/replace-meta-modules" >}}) if you're using meta modules.

## Change the Default Color Mode

{{% bs/alert warning %}}
The `hb.color` is available since `github.com/hbstack/hb@v0.9.0`, please make sure you've upgraded to the latest version.
{{% /bs/alert%}}

{{< bs/config-toggle filename=params title="Site Parameters" >}}
hb:
  color: dark
{{< /bs/config-toggle >}}
