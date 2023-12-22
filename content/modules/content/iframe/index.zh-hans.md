---
type: docs
title: "Inline Frame 模块"
linkTitle: "Inline Frame"
date: 2023-05-29T22:26:59+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: window
series:
  - 模块
categories:
  - Inline Frame
tags:
  - frame
  - iframe
images:
authors:
  - HB
---

该模块提供了一个通用的 inline frame 短代码。

<!--more-->

{{% hb-module iframe %}}

## 使用方法

```markdown
{{</* hb/iframe "URL" */>}}
```

或通过命名参数。

```markdown
{{</* hb/iframe src="URL" trigger=manual */>}}
```

## 参数

|    Parameter     | Default | Description                                |
| :--------------: | :-----: | ------------------------------------------ |
|      `src`       |    -    | Inline frame 的 URL，必填。                  |
|    `trigger`     | `auto`  | `manual` 则手动加载。                        |
|  `lazyLoading`   | `true`  | 是否启用延迟加载。                            |
| `loadButtonText` | `load`  | 加载按钮的文本。                              |
|    `loadInfo`    |    -    | 显示于加载按钮下方的信息文本，支持 Markdown 语法。|
|   `fullscreen`   | `true`  | 显示/隐藏全屏按钮。                           |

## 例子

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
