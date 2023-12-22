---
type: docs
title: "语法高亮模块"
linkTitle: "语法高亮"
date: 2023-02-15T10:11:42+08:00
draft: false
nav_icon:
  vendor: bs
  name: code-slash
series:
  - 文档
categories:
  - 模块
tags:
  - 语法高亮
authors:
  - HB
aliases:
  - /zh-hans/docs/modules/syntax-highlighting/
---

HB 提供了数十个语法高亮显示模块，本文将列出所有支持的样式。

<!--more-->

## 要求

你需要禁用 `markup.highlight.noClasses` 以使用该模块。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

## Modules

[在线预览所有样式](https://xyproto.github.io/splash/docs/all.html)。

{{% bs/alert warning %}}
{{% markdownify %}}
模块路径不包含下划线（`_`），你需要将其替换为破折号（`-`），比如 `algol_nu` 应该替换为 `algol-nu`。
{{% /markdownify %}}
{{% /bs/alert %}}

{{% syntax-highlighting-modules %}}
