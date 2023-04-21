---
title: "菜單配置"
linkTitle: "菜單"
date: 2023-02-17T23:18:18+08:00
draft: false
series:
  - 文檔
categories:
  - 配置
tags:
  - 菜單
images:
authors:
  - HB
menu:
  footer:
    parent: docs
    weight: 35
    params:
      icon:
        vendor: fas
        name: bars
---

本文介紹菜單的屬性和如何設置菜單。

<!--more-->

## 菜單項屬性

| 屬性         |  類型  | 描述                                  |
| :----------- | :----: | :------------------------------------ |
| `name`       | string | 菜單名稱                              |
| `identifier` | string | 菜單標識，一般用於定義多層級菜單。    |
| `weight`     | number | 菜單權重，越小優先級越高。            |
| `parent`     | string | 父級菜單的標識，也就是 `identifier`。 |
| `url`        | string | 菜單 URL。                            |
| `pre`        | string | 菜單的前置字符串。                    |
| `post`       | string | 菜單的尾部字符串。                    |
| `params`     | object | 模塊的特定參數。                      |

## 菜單集標識

每個菜單集都有其自己的標識，比如 `main`、`footer` 等等，其與對應的模塊相關。

## 如何配置菜單？

Hugo 支持兩種配置菜單的方式：菜單配置文件和頁面參數（又稱 front matter）。

### 菜單配置文件

{{% bs/config-toggle filename=menus %}}
{{% code-snippet menu.yaml %}}
{{% /bs/config-toggle %}}

> 其中 `main` 爲[菜單集標識](#菜單集標識)。

### 頁面參數配置

當我們打算將某一頁面添加到菜單集，最簡便的方法是於頁面設置的以下參數。

{{% bs/config-toggle filename=menus %}}
{{% code-snippet front-matter.yaml %}}
{{% /bs/config-toggle %}}

這種方式不需要顯式地指定菜單的名稱和 URL。
