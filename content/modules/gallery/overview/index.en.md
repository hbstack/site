---
type: docs
aliases:
  - /en/docs/modules/overview/
title: "Gallery Overview"
linkTitle: "Overview"
date: 2023-04-13
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: file-richtext
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

{{% bs/collapse "content/gallery/hello/index.md" primary true %}}
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

## How to Create Sub Galleries

You're able to manage the galleries and albums with complex structure, let's take the following structure as an example.

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

The structure above shows that there is a `events` sub-gallery, which includes two albums: `foo` and `bar`.

## How to Use Gallery Layout on Other Sections

You may want to change the `gallery` section, or separate images into multiple sections, such as `photos`. To do so, you need just need to specify an extra parameter called `type` as `gallery` on front matter. Let's take `photos` as en example.

1. Create gallery `content/photos/_index.md`.

```markdown
---
title: Photos
type: gallery
---
```

2. Create Album `content/photos/foo/index.md`, and put images into the `content/photos/foo` folder.

```markdown
---
title: Foo
type: gallery
---
```

3. That's all, now the new gallery section is accessible on `/photos` URL.
