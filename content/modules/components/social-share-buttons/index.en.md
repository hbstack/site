---
type: docs
title: "HB Social Share Buttons Module"
linkTitle: "Social Share Buttons"
description: This module allows users sharing your pages to popular social media.
date: 2023-12-22T02:42:49+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: share
series:
  - Modules
categories:
tags:
  - Social Share Buttons
images:
authors:
  - HB
---

{{% hb-module "social-share-buttons" %}}

## Goal

This module intends to be a simple social sharing component that to include links only and without any script as far as possible.

## Partial

This module is used by other modules to generate the share buttons in wherever they want, to do so, you'll need to import the module and include the `hb/modules/social-share-buttons/index` partial.

### Partial Context

The partial accepts two arguments:

1. `page`: the current page variable.
2. `params`: the [modules parameters](#parameters).

### Partial Example

Please replace the `my_social_share_buttons` with a better name.

```go-html-template
{{- $ctx := dict
  "page" .
  "params" (default dict site.Params.my_social_share_buttons)
}}
{{- if $ctx.params.media }}
  {{ partial "hb/modules/social-share-buttons/index" $ctx }}
{{- end }}
```

## Parameters

### `icons`

When `false`, hide the icons, default to `true`.

### `labels`

When `false`, hide the labels, default to `true`.

### `alignment`

How to align the buttons.

- `start`: align to the left, default.
- `center`: align to the center.
- `end`: align to the right.
- `between`: distribute buttons evenly.

### `media`

The array of [supported media](#supported-media).

## Supported Media

| Media |
| --- |
| `facebook` |
| `linkedin` |
| `sinaweibo` |
| `twitter` |
