---
type: docs
title: "頁頭橫幅"
linkTitle: "橫幅"
description: 於頁頭展現一幅圖片或一段視頻。
header:
  banner:
    alignment: center
    img: /images/starry-sky.jpg
date: 2023-08-26T13:40:01+08:00
# draft: true
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: card-image
series:
  - 模塊
categories:
tags:
images:
authors:
  - HB
---

{{% hb-module "header/modules/banner" %}}

## 屬性

| Name          |  Type  | Required |     Default      | Description                                |
| ------------- | :----: | :------: | :--------------: | ------------------------------------------ |
| `img`         | string |    Y     |        -         | 圖片 URL，至少指定 `img` 或 `video` 其中之一。  |
| `video`       | object |    Y     |        -         | 視頻。                                      |
| `video.src`   | string |    Y     |        -         | 視頻 URL。                                   |
| `video.poster` | string |    Y     |        -         | 視頻封面。                                   |
| `video.type`  | string |    Y     |        -         | 視頻媒體類型，如：`application/x-mpegURL`（HLS）、`application/dash+xml`（MPEG DASH）。 |
| `alignment`   | string |    -     |     `start`      | 內容對齊方式：`start`、`center` 或 `end`。     |
| `color`       | string |    -     |      `#fff`      | 內容顏色。                                   |
| `cols`        | string |    -     |    `12 lg:8`     | 內容佔用的列數，默認爲：`col-12 col-lg-8`。     |
| `title`       | boolean/string |    -     |    Page title    | 橫幅的標題，支持 Markdown，`false` 則隱藏。     |
| `description` | boolean/string |    -     | Page description | 橫幅的描述，支持 Markdown，`false` 則隱藏。     |

## 站點參數

調整 `hb.header.banner` 站點參數以全局地啓用橫幅。

{{< bs/config-toggle "hugo" >}}
{{% code-snippet "params.yaml" %}}
{{< /bs/config-toggle >}}

## 頁面參數

於 Front Matter 設置 `header.banner` 參數，以設置該頁面的橫幅，其會覆蓋站點的橫幅設置。

{{< bs/config-toggle >}}
{{% code-snippet "front-matter.yaml" %}}
{{< /bs/config-toggle >}}

若需要爲頁面禁用全局的橫幅設置，可將 `header.banner` 設置爲 `false`。

{{< bs/config-toggle >}}
{{% code-snippet "disable.yaml" %}}
{{< /bs/config-toggle >}}
