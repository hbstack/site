---
title: "页头断点"
description: 页头模块引入了一个名为 breakpoint 的参数，以控制折叠和展开的行为。
date: 2023-09-03T00:52:53+08:00
draft: false
series:
  - 新闻
categories:
  - 模块
tags:
  - 页头
  - 断点
images:
authors:
  - HB
---

## 背景

起初，页头被设计为当屏幕宽度小于 `xxl` 断点时折叠，否则展开。而问题是于 `lg` 和 `xl` 断点下，页头折叠时显得空空如也。因此我们引入了一个 `breakpoint` 的参数，并以 `lg` 作为默认断点，以适应大多数情况。

## 使用方法

{{< bs/config-toggle hugo >}}
params:
  hb:
    header:
      breakpoint: xl
{{< /bs/config-toggle >}}

详情请参阅[页头参数]({{< relref "/modules/header/overview#site-parameters" >}})。
