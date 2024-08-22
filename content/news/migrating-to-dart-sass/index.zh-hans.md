---
title: "迁移至 Dart Sass"
description: "LibSass 已被弃用很久了，是时候迁移至 Dart Sass 了。"
date: 2024-08-22T20:16:25+08:00
draft: false
series:
  - 新闻
categories:
tags:
  - Sass
  - Dart Sass
  - LibSass
images:
authors:
  - HB
---

## 如何迁移至 Dart Sass？

由于 Dart Sass 并不包含于 Hugo 二进制文件中，首先你需要[安装](https://sass-lang.com/install/)它，并升级模块，然后重建站点。

若出现了任何错误，请将其反馈到 [GitHub 讨论](https://github.com/orgs/hbstack/discussions)。

### Dart Sass 警告？

你或许会看到来自 Dart Sass 的警告，其已被 Bootstrap 修复了，但并未发布，要修正它，需要升级 Bootstrap 到最新的测试版。

```sh
hugo mod get github.com/twbs/bootstrap@main
```

## 如何继续使用 LibSass？

若你没时间或者对此不关系，你可以设置以下参数为 `libsass` 以继续使用 LibSass。

1. `hb.sass_transpiler` - HB 框架核心模块，必选。
2. `search.sass_transpiler` - 搜索模块，可选。
3. `decap_cms.sass_transpiler` - Decap CMS 模块，可选。
4. `swagger_ui.sass_transpiler` - Swagger UI 模块，可选。
