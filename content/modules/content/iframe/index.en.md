---
type: docs
title: "Inline Frame Module"
linkTitle: "Inline Frame"
date: 2023-05-29T22:26:59+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: window
series:
  - Modules
categories:
  - Inline Frame
tags:
  - frame
  - iframe
images:
authors:
  - HB
---

This module ships with an universal inline frame shortcode.

<!--more-->

{{% hb-module iframe %}}

## Usage

```markdown
{{</* hb/iframe "URL" */>}}
```

Or via naming parameters.

```markdown
{{</* hb/iframe src="URL" trigger=manual */>}}
```

## Parameters

|    Parameter     | Default | Description                                                         |
| :--------------: | :-----: | ------------------------------------------------------------------- |
|      `src`       |    -    | The iframe URL. Required.                                           |
|    `trigger`     | `auto`  | Set it as `manual` if you want to load the iframe manually.         |
|  `lazyLoading`   | `true`  | Whether to enable lazy loading.                                     |
| `loadButtonText` | `load`  | The text of load button.                                            |
|    `loadInfo`    |    -    | The information shown below the load button. Markdown is supported. |
|   `fullscreen`   | `true`  | Show/Hide the fullscreen button.                                    |

## Examples

### OpenStreetMap

{{< hb/iframe
  src="https://www.openstreetmap.org/export/embed.html?bbox=111.34643554687501%2C22.09072990148906%2C114.97192382812501%2C24.397133017391052&amp;layer=mapnik"
  fullscreen=true
>}}

### Game

{{< hb/iframe
    src="https://v6p9d9t4.ssl.hwcdn.net/html/6581665/FeatherParkWeb/index.html"
    trigger=manual
    loadInfo="**Please note** that the iframe will load the game from other sites."
    lazyLoading=false
>}}
