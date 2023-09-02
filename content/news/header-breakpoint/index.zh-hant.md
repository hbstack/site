---
title: "頁頭斷點"
description: 頁頭模塊引入了一個名爲 breakpoint 的參數，以控制摺疊和展開的行爲。
date: 2023-09-03T00:52:53+08:00
draft: false
series:
  - 新聞
categories:
  - 模塊
tags:
  - 頁頭
  - 斷點
images:
authors:
  - HB
---

## 背景

起初，頁頭被設計爲當屏幕寬度小於 `xxl` 斷點時摺疊，否則展開。而問題是於 `lg` 和 `xl` 斷點下，頁頭摺疊時顯得空空如也。因此我們引入了一個 `breakpoint` 的參數，並以 `lg` 作爲默認斷點，以適應大多數情況。

## 使用方法

{{< bs/config-toggle hugo >}}
params:
  hb:
    header:
      breakpoint: xl
{{< /bs/config-toggle >}}

詳情請參閱[頁頭參數]({{< relref "/modules/header/overview#site-parameters" >}})。
