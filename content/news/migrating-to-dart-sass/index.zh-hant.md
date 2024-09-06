---
title: "遷移至 Dart Sass"
description: "LibSass 已被棄用很久了，是時候遷移至 Dart Sass 了。"
date: 2024-08-22T20:16:25+08:00
draft: false
series:
  - 新聞
categories:
tags:
  - Sass
  - Dart Sass
  - LibSass
images:
authors:
  - HB
---

## 如何遷移至 Dart Sass？

由於 Dart Sass 並不包含於 Hugo 二進制文件中，首先你需要[安裝](https://gohugo.io/hugo-pipes/transpile-sass-to-css/#installing-in-a-development-environment)它，並升級模塊，然後重建站點。

若出現了任何錯誤，請將其反饋到 [GitHub 討論](https://github.com/orgs/hbstack/discussions)。

### Dart Sass 警告？

你或許會看到來自 Dart Sass 的警告，其已被 Bootstrap 修復了，但並未發佈，要修正它，需要升級 Bootstrap 到最新的測試版。

```sh
hugo mod get github.com/twbs/bootstrap@main
```

## 如何繼續使用 LibSass？

若你沒時間或者對此不關心，你可以設置以下參數為 `libsass` 以繼續使用 LibSass。

1. `hb.sass_transpiler` - HB 框架核心模塊，必選。
2. `search.sass_transpiler` - 搜索模塊，可選。
3. `decap_cms.sass_transpiler` - Decap CMS 模塊，可選。
4. `swagger_ui.sass_transpiler` - Swagger UI 模塊，可選。
