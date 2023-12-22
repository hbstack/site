+++
type = "docs"
title = "Back to Top Module"
linkTitle = "Back to Top"
date = 2023-02-04T00:15:11+08:00
draft = false
categories = ["Modules"]
tags = ["Back to top", "Return to top"]
series = ["Docs"]
images = []
authors = ["HB"]
aliases = [
    "/en/docs/modules/back-to-top/"
]
[nav_icon]
vendor = "bs"
name = "arrow-up-square"
+++

AKA return to top, a button to back to top.

<!--more-->

{{% hb-module back-to-top %}}

## Site Parameters

| Name              |  Type   | Require | Default  | Description                                               |
| ----------------- | :-----: | :-----: | :------: | --------------------------------------------------------- |
| `animation`       | boolean |    -    |  `true`  | Disable the default animation if `false`.                 |
| `icon_height`     | string  |    -    |  `2em`   | The height of icon.                                       |
| `icon_name`       | number  |    -    | `rocket` | The name of Bootstrap icon.                               |
| `icon_width`      | number  |    -    |  `2em`   | The width of icon.                                        |
| `position_bottom` | number  |    -    |  `1rem`  | The `bottom` property of the button.                      |
| `position_end`    | number  |    -    |  `1rem`  | The `right` (LTR) or `left` (RTL) property of the button. |

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}
