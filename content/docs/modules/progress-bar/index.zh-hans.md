+++
title = "进度条"
date = 2023-02-04T00:12:11+08:00
draft = false
categories = ["模块"]
tags = ["进度条"]
series = ["文档"]
images = []
authors = ["RazonYang"]
+++

当在当前标签页和窗口打开一个新页面时，将显示进度条。

<!--more-->

{{% hb-module progress-bar %}}

## 站点参数

| Name            |  Type  | Require | Default | Description                        |
| --------------- | :----: | :-----: | :-----: | ---------------------------------- |
| `height`        | string |    -    |  `2px`  | 进度条的高度。                     |
| `initial_width` | number |    -    |  `20`   | 进度条初始宽度，`0-100`。          |
| `interval`      | number |    -    |  `50`   | 进度条更新的时间间隔，单位：毫秒。 |
| `time`          | number |    -    |   `2`   | 进度条完成所需的时间，单位：秒。   |

{{< bootstrap/config-toggle filename=hugo >}}
{{% docs/modules/progress-bar/params %}}
{{< /bootstrap/config-toggle >}}
