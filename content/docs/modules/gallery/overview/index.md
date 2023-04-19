---
title: "Gallery Overview"
linkTitle: "Overview"
date: 2023-04-13
draft: false
nav_weight: 1
series:
  - Docs
categories:
  - Modules
tags:
  - Gallery
images:
authors:
  - HB
---

The gallery module provides a simple layout for images.

<!--more-->

{{% hb-module gallery %}}

## Site Parameters

| Parameter        |  Type  | Default | Description                                                           |
| ---------------- | :----: | :-----: | --------------------------------------------------------------------- |
| `paginate`       | number |  `24`   | How many images per page.                                             |
| `thumbnail_size` | string | `x640`  | The size of thumbnail: `[width]x[height]`, `[width]x` or `x[height]`. |

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}

## Create Gallery Section

{{% bs/collapse "content/gallery/_index.md" primary true %}}
{{% code-snippet gallery %}}
{{% /bs/collapse %}}

## Create Images Album

{{% bs/collapse "content/gallery/hello/_index.md" primary true %}}
{{% code-snippet album %}}
{{% /bs/collapse %}}

And then put your images into the `content/gallery/hello` folder, you may want to [describe in details](#image-properties).

### Album Social Share Image

The image that naming in `feature*` pattern will be used as the social share image, such as `20220101-featured.jpg`.

It can also be specified by the `images` parameter, which applies only to `static` images and external images.

{{% bs/config-toggle %}}
images:
  - https://example.com/images/feature.png
{{% /bs/config-toggle %}}

## Image Properties

The image names will be used by sorting, you should apply same pattern on images filenames, such as date.

| Property        |  Type  | Required | Description           |
| --------------- | :----: | :------: | --------------------- |
| `src`           | string |    Y     | The name of image.    |
| `params`        | object |    -     | The image parameters. |
| `params.author` | string |    -     | The author/painter.   |
| `params.source` | string |    -     | The source of image.  |
