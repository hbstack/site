---
title: "自定义样式"
linkTitle: 样式
date: 2023-04-15T00:12:29+08:00
draft: false
series:
  - 文档
categories:
tags:
  - Bootstrap
  - SCSS
  - CSS
images:
authors:
  - HB
---

HB 允许添加自定义样式和覆盖 Bootstrap 默认的 SCSS 变量。

<!--more-->

## 添加自定义样式

创建以下文件以添加自定义样式。

{{% bs/collapse "assets/hb/modules/custom/scss/index.scss" primary true %}}
{{% code-snippet index.scss %}}
{{% /bs/collapse %}}

{{< bs/alert >}}
第一次加载时请重启 Hugo 服务器。
{{< /bs/alert >}}

## 自定义 Bootstrap SCSS 变量

为了自定义 Bootstrap SCSS 变量，你需要创建以下文件。

{{% bs/collapse "assets/hb/modules/custom/scss/variables.tmpl.scss" primary true %}}
{{% code-snippet variables.scss %}}
{{% /bs/collapse %}}

{{< bs/alert >}}
请重启 Hugo 服务器，以确保加载新创建的文件。
{{< /bs/alert >}}

可用的 SCSS 变量可以在文档和源代码中找到。

- https://getbootstrap.com/
- https://github.com/twbs/bootstrap/blob/main/scss/_variables.scss
- https://github.com/twbs/bootstrap/blob/main/scss/_variables-dark.scss
