---
type: docs
title: "HB 社交分享按鈕模塊"
linkTitle: "社交分享按鈕"
description: 該模塊方便用戶分享頁面到流行的社交媒體。
date: 2023-12-22T02:42:49+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: share
series:
  - 模塊
categories:
tags:
  - 社交分享按鈕
images:
authors:
  - HB
---

{{% hb-module "social-share-buttons" %}}

## 目標

該模塊旨在成為一個極簡的社交分享組件，其儘可能地只包含鏈接，而不引入任何腳本。

## 模板

該模塊被用於其他模塊，以在任何地方生成社交分享按鈕，為此，你需要導入模塊並引用 `hb/modules/social-share-buttons/index` 模板。

### 模板上下文

該模板接收兩個參數：

1. `page`：當前頁面參數。
2. `params`：[當前模塊參數](#參數).

### 模板示例

請自行替換 `my_social_share_buttons`。

```go-html-template
{{- $ctx := dict
  "page" .
  "params" (default dict site.Params.my_social_share_buttons)
}}
{{- if $ctx.params.media }}
  {{ partial "hb/modules/social-share-buttons/index" $ctx }}
{{- end }}
```

## 參數

### `icons`

為 `false` 時，隱藏圖標，默認為 `true`。

### `labels`

為 `false` 時，隱藏標籤文本，默認為 `true`。

### `alignment`

如何對其按鈕：

- `start`：向左對齊。
- `center`：居中對齊。
- `end`：向右對齊。
- `between`：等分。

### `media`

一組[支持的媒體](#支持的媒體)。

## 支持的媒體

{{< page-resource-content "codes/media" >}}
