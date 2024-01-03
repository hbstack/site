---
type: docs
aliases:
  - /zh-hans/docs/modules/overview/
title: "图库概览"
linkTitle: "概览"
date: 2023-04-13
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: file-richtext
series:
  - 文档
categories:
  - 模块
tags:
  - 图库
images:
authors:
  - HB
---

图库模块为图片提供了一个简单的布局。

<!--more-->

{{% hb-module gallery %}}

## 站点配置

| Parameter        |  Type  | Default | Description                                                 |
| ---------------- | :----: | :-----: | ----------------------------------------------------------- |
| `paginate`       | number |  `24`   | 每页图片数量。                                              |
| `thumbnail_size` | string | `x640`  | 缩略图尺寸：`[width]x[height]`、`[width]x` 或 `x[height]`。 |
| `date_sort_order` | string | `desc` | `desc` 或者 `asc`。 |
| `highlight_images_count` | number | `10` | 高亮图片数量。 |
| `highlight_images_recursive` | boolean | `false` | 为 `true` 时，递归展示高亮图片。 |

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}

## 创建图库栏目

{{% bs/collapse "content/gallery/_index.md" primary true %}}
{{% code-snippet gallery %}}
{{% /bs/collapse %}}

## 创建相册

{{% bs/collapse "content/gallery/hello/index.md" primary true %}}
{{% code-snippet album %}}
{{% /bs/collapse %}}

然后将图片保存到 `content/gallery/hello` 目录，还可以[进一步描述图片](#图片属性)。

### 相册社交分享图片

以 `feature*` 形式命名的图片将会作为社交分享的图片，如 `20220101-featured.jpg`。

也可以使用 `images` 参数指定，仅适用于 `static` 图片和外部图片。

{{% bs/config-toggle %}}
images:
  - https://example.com/images/feature.png
{{% /bs/config-toggle %}}

## 图片属性

| Property        |  Type  | Required | Description           |
| --------------- | :----: | :------: | --------------------- |
| `src`           | string |    Y     | 图片文件名。    |
| `params`        | object |    -     | 图片参数。 |
| `params.author` | string |    -     | 图片作者、画家。  |
| `params.source` | string |    -     | 图片来源。  |
| `params.date`   | string |    -     | 图片日期，一般用于没有 EXIF 信息的图片。 |
| `params.highlight` | boolean | - | 指示该图片是否高亮。 |

## 图片排序

图片按日期（EXIF 或由 [params.date](#图片属性) 指定的日期）以 [date_sort_order](#站点配置) 顺序进行排序。其他没有日期的图片则按名称字母排序，并追加到最后。

## 样式

| Name | Type | Default | Description |
| --- | :-: | :-: | --- |
| `hb_gallery_album_item_gap` | string | `5px` | 条目间隔。
| `hb_gallery_album_item_border_radius` | string | `5px` | 条目圆角大小。

以扁平样式为例。

{{< bs/config-toggle filename=params title="Site Parameters" >}}
hb:
  styles:
    hb_gallery_album_item_gap: 1px
    hb_gallery_album_item_border_radius: 0
{{< /bs/config-toggle >}}

![图库扁平样式](flat.png#center "图库扁平样式")

## 如何创建子图库

你可以通过复杂的结构来管理图库和画册，以下列结构作为例子。

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

上述结构展示了一个 `events` 子图库，其包含两个画册：`foo` 和 `bar`。

## 如何于其他栏目使用图库布局

或许你打算修改 `gallery` 栏目，又或者将图片分离到不同的栏目，比如 `photos`，为此，你只需要于前言指定一个名为 `type` 的参数为 `gallery`。

1. 创建图库 `content/photos/_index.md`。

```markdown
---
title: Photos
type: gallery
---
```

2. 创建相册 `content/photos/foo/index.md`，并将图片保存至 `content/photos/foo`。

```markdown
---
title: Foo
type: gallery
---
```

3. 至此大功告成，新图库可通过 `/photos` URL 访问。
