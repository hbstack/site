---
type: docs
title: "語法高亮模塊"
linkTitle: "語法高亮"
date: 2023-02-15T10:11:42+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
tags:
  - 語法高亮
authors:
  - HB
aliases:
  - /zh-hant/docs/modules/syntax-highlighting/
---

HB 提供了數十個語法高亮顯示模塊，本文將列出所有支持的樣式。

<!--more-->

## 要求

你需要禁用 `markup.highlight.noClasses` 以使用該模塊。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

## Modules

[在線預覽所有樣式](https://xyproto.github.io/splash/docs/all.html)。

{{% bs/alert warning %}}
{{% markdownify %}}
模塊路徑不包含下劃線（`_`），你需要將其替換爲破折號（`-`），比如 `algol_nu` 應該替換爲 `algol-nu`。
{{% /markdownify %}}
{{% /bs/alert %}}

{{% syntax-highlighting-modules %}}
