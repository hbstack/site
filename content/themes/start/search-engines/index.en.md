---
type: docs
title: "Search Engines"
description: Customize search engines.
date: 2023-09-15T16:26:58+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: search
series:
  - Themes
tags:
  - Start Page
  - Search Engines
---

## Search Engines Properties

| Name | Type | Description |
| ---- | :--: | ----------- |
| `weight` | number | Lower weight gets higer priority. |

## Built-in Search Engines

| Name | Identifier | Module | Version |
| ---- | :--------: | :-----: | :-----: |
| [Baidu](https://www.baidu.com) | `baidu` | `github.com/hbstack/theme-start/engines/baidu` | ![Version](https://img.shields.io/github/v/tag/hbstack/theme-start?filter=engines%2Fbaidu*) |
| [Bing](https://www.bing.com) | `bing` | `github.com/hbstack/theme-start/engines/bing` | ![Version](https://img.shields.io/github/v/tag/hbstack/theme-start?filter=engines%2Fbing*) |
| [DockDockGo](https://www.duckduckgo.com) | `duckduckgo` | `github.com/hbstack/theme-start/engines/duckduckgo` | ![Version](https://img.shields.io/github/v/tag/hbstack/theme-start?filter=engines%2Fduckduckgo*) |
| [Google](https://www.google.com) | `google` | `github.com/hbstack/theme-start/engines/google` | ![Version](https://img.shields.io/github/v/tag/hbstack/theme-start?filter=engines%2Fgoogle*) |
| [Sogou](https://www.sogou.com) | `sogou` | `github.com/hbstack/theme-start/engines/sogou` | ![Version](https://img.shields.io/github/v/tag/hbstack/theme-start?filter=engines%2Fsogou*) |
| [Wikipedia](https://www.wikipedia.org) | `wikipedia` | `github.com/hbstack/theme-start/engines/wikipedia` | ![Version](https://img.shields.io/github/v/tag/hbstack/theme-start?filter=engines%2Fwikipedia*) |
| [Yahoo](https://www.yahoo.com) | `yahoo` | `github.com/hbstack/theme-start/engines/yahoo` | ![Version](https://img.shields.io/github/v/tag/hbstack/theme-start?filter=engines%2Fyahoo*) |
| [Yandex](https://www.yandex.com) | `yandex` | `github.com/hbstack/theme-start/engines/yandex` | ![Version](https://img.shields.io/github/v/tag/hbstack/theme-start?filter=engines%2Fyandex*) |

## Search Engines Configuration

{{< bs/config-toggle hugo >}}
module:
  imports:
    - path: github.com/hbstack/theme-start/engines/google
    - path: github.com/hbstack/theme-start/engines/bing
    - path: github.com/hbstack/theme-start/engines/baidu
    - path: github.com/hbstack/theme-start/engines/duckduckgo
params:
  hb:
    theme_start:
      search_engines:
        google:
          weight: 1
        bing:
          weight: 2
        baidu:
          weight: 3
        duckduckgo:
          weight: 4
{{< /bs/config-toggle >}}
