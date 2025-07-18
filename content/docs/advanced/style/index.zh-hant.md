---
title: "自定義樣式"
linkTitle: 樣式
date: 2023-04-15T00:12:29+08:00
draft: false
series:
  - 文檔
categories:
tags:
  - Bootstrap
  - SCSS
  - CSS
images:
authors:
  - HB
---

HB 允許添加自定義樣式和覆蓋 Bootstrap 默認的 SCSS 變量。

<!--more-->

## 添加自定義樣式

創建以下文件以添加自定義樣式。

{{< bs/collapse "assets/hb/modules/custom/scss/index.scss" primary true >}}
{{% code-snippet index.scss %}}
{{< /bs/collapse >}}

{{< bs/alert >}}
第一次加載時請重啓 Hugo 服務器。
{{< /bs/alert >}}

## 自定義 Bootstrap SCSS 變量

爲了自定義 Bootstrap SCSS 變量，你需要創建以下文件。

{{< bs/collapse "assets/hb/modules/custom/scss/variables.tmpl.scss" primary true >}}
{{% code-snippet variables.scss %}}
{{< /bs/collapse >}}

{{< bs/alert >}}
請重啓 Hugo 服務器，以確保加載新創建的文件。
{{< /bs/alert >}}

可用的 SCSS 變量可以在文檔和源代碼中找到。

- https://getbootstrap.com/
- https://github.com/twbs/bootstrap/blob/main/scss/_variables.scss
- https://github.com/twbs/bootstrap/blob/main/scss/_variables-dark.scss
