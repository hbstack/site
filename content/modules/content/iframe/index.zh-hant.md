---
type: docs
title: "Inline Frame 模塊"
linkTitle: "Inline Frame"
date: 2023-05-29T22:26:59+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: window
series:
  - 模塊
categories:
  - Inline Frame
tags:
  - frame
  - iframe
images:
authors:
  - HB
---

該模塊提供了一個通用的 inline frame 短代碼。

<!--more-->

{{% hb-module iframe %}}

## 使用方法

```markdown
{{</* hb/iframe "URL" */>}}
```

或通過命名參數。

```markdown
{{</* hb/iframe src="URL" trigger=manual */>}}
```

## 參數

|    Parameter     | Default | Description                                |
| :--------------: | :-----: | ------------------------------------------ |
|      `src`       |    -    | Inline frame 的 URL，必填。                  |
|    `trigger`     | `auto`  | `manual` 則手動加載。                        |
|  `lazyLoading`   | `true`  | 是否啓用延遲加載。                            |
| `loadButtonText` | `load`  | 加載按鈕的文本。                              |
|    `loadInfo`    |    -    | 顯示於加載按鈕下方的信息文本，支持 Markdown 語法。|
|   `fullscreen`   | `true`  | 顯示/隱藏全屏按鈕。                           |

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
