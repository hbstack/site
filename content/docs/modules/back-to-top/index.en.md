+++
title = "Back to Top"
date = 2023-02-04T00:15:11+08:00
draft = false
categories = ["Module"]
tags = ["Back to top", "Return to top"]
series = ["Docs"]
images = []
authors = ["RazonYang"]
+++

AKA return to top, a button to back to top.

<!--more-->

{{% hb-module back-to-top %}}

## Site Parameters

| Name              | Version  |  Type   | Require | Default  | Description                                               |
| ----------------- | :------: | :-----: | :-----: | :------: | --------------------------------------------------------- |
| `animation`       | `v0.2.0` | boolean |    -    |  `true`  | Disable the default animation if `false`.                 |
| `icon_height`     | `v0.2.0` | string  |    -    |  `2em`   | The height of icon.                                       |
| `icon_name`       | `v0.2.0` | number  |    -    | `rocket` | The name of Bootstrap icon.                               |
| `icon_width`      | `v0.2.0` | number  |    -    |  `2em`   | The width of icon.                                        |
| `position_bottom` | `v0.2.0` | number  |    -    |  `1rem`  | The `bottom` property of the button.                      |
| `position_end`    | `v0.2.0` | number  |    -    |  `1rem`  | The `right` (LTR) or `left` (RTL) property of the button. |

{{< bootstrap/config-toggle filename=hugo >}}
{{% docs/modules/back-to-top/params %}}
{{< /bootstrap/config-toggle >}}
