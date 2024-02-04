---
type: docs
title: "HB PWA Installer"
linkTitle: "PWA Installer"
description: "HB PWA installer module shows a button on the bottom to add the site to home screen."
date: 2024-02-05T02:49:57+08:00
draft: false
nav_icon:
  vendor: bs
  name: rocket
series:
  - Modules
categories:
tags:
  - PWA
  - PWA Installer
  - PWA Install Button
images:
authors:
  - HB
---

{{< youtube 8hpoIbeWib8 >}}
{.mb-5}

{{% hb-module "pwa-installer" %}}

## Site Parameters

{{< bs/config-toggle filename=params title="Site Parameters" >}}
{{< code-snippet "params.yaml" >}}
{{< /bs/config-toggle >}}

### `delay`

Delay in seconds before hiding the button.

### `dismissed_period`

Dismissed period in seconds.

## Limitations

Supports Chrome, Edge and Opera browsers, see [Browser compatibility](https://developer.mozilla.org/en-US/docs/Web/API/Window/beforeinstallprompt_event#browser_compatibility).
