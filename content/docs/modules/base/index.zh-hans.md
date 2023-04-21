---
title: "基础模块"
linkTitle: 基础
date: 2023-02-18T19:18:50+08:00
draft: false
nav_weight: 40
series:
  - 文档
categories:
  - 模块
tags:
images:
authors:
  - HB
menu:
  footer:
    parent: hb-modules
    weight: 4
    params:
      icon:
        vendor: bs
        name: window-sidebar
---

基本模块为其他模块提供了一些基本的布局和模板，如落地页、404 页面不存在、[页头]({{< relref "docs/modules/header" >}})模块和[页尾]({{< relref "docs/modules/footer" >}})模块。

<!--more-->

{{% hb-module base %}}

## 功能特性

- 落地页布局。
- 404 页面不存在。
- 集成了[页头]({{< relref "docs/modules/header" >}})和[页尾]({{< relref "docs/modules/footer" >}})模块。

## 钩子

| Name            | Description          |
| --------------- | -------------------- |
| `hb-main-begin` | 于 `.hb-main` 之前。 |
| `hb-main-end`   | 于 `.hb-main` 之后。 |
