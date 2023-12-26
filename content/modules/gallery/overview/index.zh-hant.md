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

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}

## 創建圖庫欄目

{{% bs/collapse "content/gallery/_index.md" primary true %}}
{{% code-snippet gallery %}}
{{% /bs/collapse %}}

## 創建相冊

{{% bs/collapse "content/gallery/hello/_index.md" primary true %}}
{{% code-snippet album %}}
{{% /bs/collapse %}}

然後將圖片保存到 `content/gallery/hello` 目錄，還可以[進一步描述圖片](#圖片屬性)。

### 相冊社交分享圖片

以 `feature*` 形式命名的圖片將會作爲社交分享的圖片，如 `20220101-featured.jpg`。

也可以使用 `images` 參數指定，僅適用於 `static` 圖片和外部圖片。

{{% bs/config-toggle %}}
images:
  - https://example.com/images/feature.png
{{% /bs/config-toggle %}}

## 圖片屬性

The image names will be used by sorting, you should apply same pattern on images filenames, such as date.

| Property        |  Type  | Required | Description           |
| --------------- | :----: | :------: | --------------------- |
| `src`           | string |    Y     | The name of image.    |
| `params`        | object |    -     | The image parameters. |
| `params.author` | string |    -     | The author/painter.   |
| `params.source` | string |    -     | The source of image.  |

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
