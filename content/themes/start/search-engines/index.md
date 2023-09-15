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
| `disable` | boolean | Enable/Disable the engine. |

See below for default properties of built-in search engines.

## Built-in Search Engines

| Name | Identifier | Disable | Weight |
| ---- | :--------: | :-----: | :-----: |
| [Baidu](https://www.baidu.com) | `baidu` | `false` | `3` |
| [Bing](https://www.bing.com) | `bing` | `false` | `2` |
| [DockDockGo](https://www.duckduckgo.com) | `duckduckgo` | `false` | `4` |
| [Google](https://www.google.com) | `google` | `false` | `1` |
| [Sogou](https://www.sogou.com) | `sogou` | `true` | - |
| [Wikipedia](https://www.wikipedia.org) | `wikipedia` | `true` | - |
| [Yahoo](https://www.yahoo.com) | `yahoo` | `true` | `5` |
| [Yandex](https://www.yandex.com) | `yandex` | `true` | `6` |

## Search Engines Configuration

{{< bs/config-toggle hugo >}}
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
        wikipedia:
          disable: false
        yahoo:
          disable: false
        yandex:
          disable: false
        sogou:
          disable: false
{{< /bs/config-toggle >}}
