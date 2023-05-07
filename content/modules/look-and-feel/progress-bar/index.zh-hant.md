+++
type = "docs"
aliases = [
  "/zh-hant/docs/modules/progress-bar/"
]
title = "進度條模塊"
linkTitle = "進度條"
date = 2023-02-04T00:12:11+08:00
draft = false
categories = ["模塊"]
tags = ["進度條"]
series = ["文檔"]
images = []
authors = ["HB"]
+++

當在當前標籤頁和窗口打開一個新頁面時，將顯示進度條。

<!--more-->

{{% hb-module progress-bar %}}

## 站點參數

| Name            |  Type  | Require | Default | Description                        |
| --------------- | :----: | :-----: | :-----: | ---------------------------------- |
| `height`        | string |    -    |  `2px`  | 進度條的高度。                     |
| `initial_width` | number |    -    |  `20`   | 進度條初始寬度，`0-100`。          |
| `interval`      | number |    -    |  `50`   | 進度條更新的時間間隔，單位：毫秒。 |
| `time`          | number |    -    |   `2`   | 進度條完成所需的時間，單位：秒。   |

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}
