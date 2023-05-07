---
type: docs
aliases:
  - /zh-hant/docs/modules/base/
title: "基礎模塊"
linkTitle: 基礎
date: 2023-02-18T19:18:50+08:00
draft: false
nav_weight: 40
nav_icon:
  vendor: bs
  name: window-sidebar
series:
  - 文檔
categories:
  - 模塊
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

基本模塊爲其他模塊提供了一些基本的佈局和模板，如落地頁、404 頁面不存在、[頁頭]({{< relref "modules/header" >}})模塊和[頁尾]({{< relref "modules/footer" >}})模塊。

<!--more-->

{{% hb-module base %}}

## 功能特性

- 落地頁佈局。
- 404 頁面不存在。
- 集成了[頁頭]({{< relref "modules/header" >}})和[頁尾]({{< relref "modules/footer" >}})模塊。

## 鉤子

| Name            | Description          |
| --------------- | -------------------- |
| `hb-main-begin` | 於 `.hb-main` 之前。 |
| `hb-main-end`   | 於 `.hb-main` 之後。 |
