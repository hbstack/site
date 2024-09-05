---
type: docs
title: "表格"
linkTitle: "表格"
description: "在本指南中，你將學習如何配置和建立表格。"
date: 2024-09-04T15:34:50+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: table
series:
  - Modules
categories:
tags:
images:
authors:
  - HB
---

## 前置條件

你需要升級 Hugo 到 `v0.134.0` 或後續版本，並啟用 `markup.goldmark.parser.attribute.block`。

{{< page-resource-content "data/requirements" >}}

{{% params data="data/params.yaml" heading="站點引數" context="hb.tables" %}}

## 站點引數示例

{{< page-resource-content "data/config" >}}

{{% params data="data/attrs.yaml" heading="表格屬性" %}}

## 示例

### 預設表格

樣式取決於預設配置。

{{< page-resource-content "data/default" >}}

### 表格水平對齊

{{< page-resource-content "data/horizontal-alignments" >}}

### 表格垂直對齊

{{< page-resource-content "data/vertical-alignments" >}}

### 帶有說明的表格

{{< page-resource-content "data/captions" >}}

### 表格樣式

{{< page-resource-content "data/styles" >}}

### 帶有邊框和邊框樣式的表格

{{< page-resource-content "data/bordered" >}}

### 無邊框表格

{{< page-resource-content "data/borderless" >}}

### 小號表格

{{< page-resource-content "data/small" >}}

### 表頭樣式

{{< page-resource-content "data/thead-styles" >}}
