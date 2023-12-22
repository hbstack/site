---
type: docs
title: "页头横幅"
linkTitle: "横幅"
description: 于页头展现一幅图片或一段视频。
header:
  banner:
    alignment: center
    img: /images/starry-sky.jpg
date: 2023-08-26T13:40:01+08:00
# draft: true
nav_weight: 1000
nav_icon:
  vendor: bs
  name: card-image
series:
  - 模块
categories:
tags:
images:
authors:
  - HB
---

{{% hb-module "header/modules/banner" %}}

## 属性

| Name          |  Type  | Required |     Default      | Description                                |
| ------------- | :----: | :------: | :--------------: | ------------------------------------------ |
| `img`         | string |    Y     |        -         | 图片 URL，至少指定 `img` 或 `video` 其中之一。  |
| `video`       | object |    Y     |        -         | 视频。                                      |
| `video.src`   | string |    Y     |        -         | 视频 URL。                                   |
| `video.poster` | string |    Y     |        -         | 视频封面。                                   |
| `video.type`  | string |    Y     |        -         | 视频媒体类型，如：`application/x-mpegURL`（HLS）、`application/dash+xml`（MPEG DASH）。 |
| `alignment`   | string |    -     |     `start`      | 内容对齐方式：`start`、`center` 或 `end`。     |
| `color`       | string |    -     |      `#fff`      | 内容颜色。                                   |
| `cols`        | string |    -     |    `12 lg:8`     | 内容占用的列数，默认为：`col-12 col-lg-8`。     |
| `title`       | boolean/string |    -     |    Page title    | 横幅的标题，支持 Markdown，`false` 则隐藏。     |
| `description` | boolean/string |    -     | Page description | 横幅的描述，支持 Markdown，`false` 则隐藏。     |

## 站点参数

调整 `hb.header.banner` 站点参数以全局地启用横幅。

{{< bs/config-toggle "hugo" >}}
{{% code-snippet "params.yaml" %}}
{{< /bs/config-toggle >}}

## 页面参数

于 Front Matter 设置 `header.banner` 参数，以设置该页面的横幅，其会覆盖站点的横幅设置。

{{< bs/config-toggle >}}
{{% code-snippet "front-matter.yaml" %}}
{{< /bs/config-toggle >}}

若需要为页面禁用全局的横幅设置，可将 `header.banner` 设置为 `false`。

{{< bs/config-toggle >}}
{{% code-snippet "disable.yaml" %}}
{{< /bs/config-toggle >}}

要获得 Video.js 的支持，应指定 `video_js` 参数，该参数可用于播放浏览器本机不支持的视频，如 HLS 和 MPEG-DASH。

{{< bs/config-toggle >}}
{{% code-snippet "video.yaml" %}}
{{< /bs/config-toggle >}}

## Examples

- [横幅动画]({{< relref "/examples/header-banner-aos" >}})
- [常规视频横幅]({{< relref "/examples/header-banner-video" >}})
- [HLS 视频横幅]({{< relref "/examples/header-banner-hls-video" >}})
- [MPEG-DASH 视频横幅]({{< relref "/examples/header-banner-mpeg-dash-video" >}})
