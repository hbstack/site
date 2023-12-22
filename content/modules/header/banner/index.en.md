---
type: docs
title: "Header Banner"
linkTitle: "Banner"
description: Show a image or a video on the header.
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
  - Modules
categories:
tags:
images:
authors:
  - HB
---

{{% hb-module "header/modules/banner" %}}

## Properties

| Name           |  Type  | Required |     Default      | Description                                                       |
| -------------- | :----: | :------: | :--------------: | ----------------------------------------------------------------- |
| `img`          | string |    Y     |        -         | The image URL, you should at least specify the `img` or `video`.  |
| `video`        | object |    Y     |        -         | The video.                                                        |
| `video.src`    | string |    Y     |        -         | The video URL.                                                    |
| `video.poster` | string |    Y     |        -         | The video poster.                                                 |
| `video.type`   | string |    Y     |        -         | The video media type, i.e. `application/x-mpegURL` (HLS), `application/dash+xml` (MPEG DASH). |
| `alignment`    | string |    -     |     `start`      | The alignment of content, `start`, `center` or `end`.             |
| `color`        | string |    -     |      `#fff`      | The content color.                                                |
| `cols`         | string |    -     |     `12 lg:8`    | How many columns does content take, `col-12 col-lg-8` by default. |
| `title`        | boolean/string |    -     |    Page title    | The banner title, Markdown is supported, hidden when `false`.     |
| `description`  | boolean/string |    -     | Page description | The banner description, supports Markdown syntax, hidden when `false`. |

## Site Parameters

Tweak the `hb.header.banner` site parameters to enable the banner all of the pages.

{{< bs/config-toggle "hugo" >}}
{{% code-snippet "params.yaml" %}}
{{< /bs/config-toggle >}}

## Page Parameters

Set up the banner for a specified page via setting the `header.banner` parameters on front matter, it will override the site parameters.

{{< bs/config-toggle >}}
{{% code-snippet "front-matter.yaml" %}}
{{< /bs/config-toggle >}}

To disable the global banner via setting the `header.banner` as `false`.

{{< bs/config-toggle >}}
{{% code-snippet "disable.yaml" %}}
{{< /bs/config-toggle >}}

To get supported by Video.js, you should specify the `video_js` parameter, which can be used to play the videos not supported by browser natively, such as the HLS and MPEG-DASH.

{{< bs/config-toggle >}}
{{% code-snippet "video.yaml" %}}
{{< /bs/config-toggle >}}

## Examples

- [Banner With AOS Animations]({{< relref "/examples/header-banner-aos" >}})
- [Normal Video Banner]({{< relref "/examples/header-banner-video" >}})
- [HLS Video Banner]({{< relref "/examples/header-banner-hls-video" >}})
- [MPEG-DASH Video Banner]({{< relref "/examples/header-banner-mpeg-dash-video" >}})
