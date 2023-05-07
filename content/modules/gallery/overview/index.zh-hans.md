---
type: docs
aliases:
  - /zh-hans/docs/modules/overview/
title: "图库概览"
linkTitle: "概览"
date: 2023-04-13
draft: false
nav_weight: 1
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

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}

## 创建图库栏目

{{% bs/collapse "content/gallery/_index.md" primary true %}}
{{% code-snippet gallery %}}
{{% /bs/collapse %}}

## 创建相册

{{% bs/collapse "content/gallery/hello/_index.md" primary true %}}
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

The image names will be used by sorting, you should apply same pattern on images filenames, such as date.

| Property        |  Type  | Required | Description           |
| --------------- | :----: | :------: | --------------------- |
| `src`           | string |    Y     | The name of image.    |
| `params`        | object |    -     | The image parameters. |
| `params.author` | string |    -     | The author/painter.   |
| `params.source` | string |    -     | The source of image.  |
