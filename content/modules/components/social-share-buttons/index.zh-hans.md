---
type: docs
title: "HB 社交分享按钮模块"
linkTitle: "社交分享按钮"
description: 该模块方便用户分享页面到流行的社交媒体。
date: 2023-12-22T02:42:49+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: share
series:
  - 模块
categories:
tags:
  - 社交分享按钮
images:
authors:
  - HB
---

{{% hb-module "social-share-buttons" %}}

## 目标

该模块旨在成为一个极简的社交分享组件，其尽可能地只包含链接，而不引入任何脚本。

## 模板

该模块被用于其他模块，以在任何地方生成社交分享按钮，为此，你需要导入模块并引用 `hb/modules/social-share-buttons/index` 模板。

### 模板上下文

该模板接收两个参数：

1. `page`：当前页面参数。
2. `params`：[当前模块参数](#参数).

### 模板示例

请自行替换 `my_social_share_buttons`。

```go-html-template
{{- $ctx := dict
  "page" .
  "params" (default dict site.Params.my_social_share_buttons)
}}
{{- if $ctx.params.media }}
  {{ partial "hb/modules/social-share-buttons/index" $ctx }}
{{- end }}
```

## 参数

### `icons`

为 `false` 时，隐藏图标，默认为 `true`。

### `labels`

为 `false` 时，隐藏标签文本，默认为 `true`。

### `alignment`

如何对其按钮：

- `start`：向左对齐。
- `center`：居中对齐。
- `end`：向右对齐。
- `between`：等分。

### `media`

一组[支持的媒体](#支持的媒体)。

## 支持的媒体

| Media |
| --- |
| `facebook` |
| `linkedin` |
| `sinaweibo` |
| `twitter` |
