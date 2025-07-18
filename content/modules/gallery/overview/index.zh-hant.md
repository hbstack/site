---
type: docs
aliases:
  - /zh-hant/docs/modules/overview/
title: "圖庫概覽"
linkTitle: "概覽"
date: 2023-04-13
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: file-richtext
series:
  - 文檔
categories:
  - 模塊
tags:
  - 圖庫
images:
authors:
  - HB
---

圖庫模塊爲圖片提供了一個簡單的佈局。

<!--more-->

{{% hb-module gallery %}}

## 站點配置

| Parameter        |  Type  | Default | Description                                                 |
| ---------------- | :----: | :-----: | ----------------------------------------------------------- |
| `paginate`       | number |  `24`   | 每頁圖片數量。                                              |
| `thumbnail_size` | string | `x640`  | 縮略圖尺寸：`[width]x[height]`、`[width]x` 或 `x[height]`。 |
| `date_sort_order` | string | `desc` | `desc` 或者 `asc`。 |
| `highlight_images_count` | number | `10` | 高亮圖片數量。 |
| `highlight_images_recursive` | boolean | `false` | 為 `true` 時，遞歸展示高亮圖片。 |

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}

## 創建圖庫欄目

{{< bs/collapse "content/gallery/_index.md" primary true >}}
{{% code-snippet gallery %}}
{{< /bs/collapse >}}

## 創建相冊

{{< bs/collapse "content/gallery/hello/index.md" primary true >}}
{{% code-snippet album %}}
{{< /bs/collapse >}}

然後將圖片保存到 `content/gallery/hello` 目錄，還可以[進一步描述圖片](#圖片屬性)。

### 相冊社交分享圖片

以 `feature*` 形式命名的圖片將會作爲社交分享的圖片，如 `20220101-featured.jpg`。

也可以使用 `images` 參數指定，僅適用於 `static` 圖片和外部圖片。

{{% bs/config-toggle %}}
images:
  - https://example.com/images/feature.png
{{% /bs/config-toggle %}}

## 圖片屬性

| Property        |  Type  | Required | Description           |
| --------------- | :----: | :------: | --------------------- |
| `src`           | string |    Y     | 圖片文件名。    |
| `params`        | object |    -     | 圖片參數。 |
| `params.author` | string |    -     | 圖片作者、畫家。  |
| `params.source` | string |    -     | 圖片來源。  |
| `params.date`   | string |    -     | 圖片日期，一般用於沒有 EXIF 信息的圖片。 |
| `params.highlight` | boolean | - | 指示該圖片是否高亮。 |

## 圖片排序

圖片按日期（EXIF 或由 [params.date](#圖片屬性) 指定的日期）以 [date_sort_order](#站點配置) 順序進行排序。其他沒有日期的圖片則按名稱字母排序，並追加到最後。

## 樣式

| Name | Type | Default | Description |
| --- | :-: | :-: | --- |
| `hb_gallery_album_item_gap` | string | `5px` | 條目間隔。
| `hb_gallery_album_item_border_radius` | string | `5px` | 條目圓角大小。

以扁平樣式為例。

{{< bs/config-toggle filename=params title="Site Parameters" >}}
hb:
  styles:
    hb_gallery_album_item_gap: 1px
    hb_gallery_album_item_border_radius: 0
{{< /bs/config-toggle >}}

![圖庫扁平樣式](flat.png#center "圖庫扁平樣式")

## 如何創建子圖庫

你可以通過複雜的結構來管理圖庫和畫冊，以下列結構作為例子。

```sh
$ tree content/gallery/events
├── _index.md
├── bar
│   ├── ***.jpg
│   └── index.md
└── foo
│   ├── ***.jpg
    └── index.md
```

上述結構展示了一個 `events` 子圖庫，其包含兩個畫冊：`foo` 和 `bar`。

## 如何於其他欄目使用圖庫佈局

或許你打算修改 `gallery` 欄目，又或者將圖片分離到不同的欄目，比如 `photos`，為此，你只需要於前言指定一個名為 `type` 的參數為 `gallery`。

1. 創建圖庫 `content/photos/_index.md`。

```markdown
---
title: Photos
type: gallery
---
```

2. 創建相冊 `content/photos/foo/index.md`，並將圖片保存至 `content/photos/foo`。

```markdown
---
title: Foo
type: gallery
---
```

3. 至此大功告成，新圖庫可通過 `/photos` URL 訪問。
