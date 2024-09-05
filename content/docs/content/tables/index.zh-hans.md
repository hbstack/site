---
type: docs
title: "表格"
linkTitle: "表格"
description: "在本指南中，你将学习如何配置和创建表格。"
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

## 前置条件

你需要升级 Hugo 到 `v0.134.0` 或后续版本，并启用 `markup.goldmark.parser.attribute.block`。

{{< page-resource-content "data/requirements" >}}

{{% params data="data/params.yaml" heading="站点参数" context="hb.tables" %}}

## 站点参数示例

{{< page-resource-content "data/config" >}}

{{% params data="data/attrs.yaml" heading="表格属性" %}}

## 示例

### 默认表格

样式取决于默认配置。

{{< page-resource-content "data/default" >}}

### 表格水平对齐

{{< page-resource-content "data/horizontal-alignments" >}}

### 表格垂直对齐

{{< page-resource-content "data/vertical-alignments" >}}

### 带有说明的表格

{{< page-resource-content "data/captions" >}}

### 表格样式

{{< page-resource-content "data/styles" >}}

### 带有边框和边框样式的表格

{{< page-resource-content "data/bordered" >}}

### 无边框表格

{{< page-resource-content "data/borderless" >}}

### 小号表格

{{< page-resource-content "data/small" >}}

### 表头样式

{{< page-resource-content "data/thead-styles" >}}

### 无表头表格

{{< page-resource-content "data/without-header" >}}
