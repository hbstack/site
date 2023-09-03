---
type: docs
aliases:
  - /zh-hant/docs/modules/footer/overview/
title: "頁尾概覽"
linkTitle: 概覽
date: 2023-02-17T00:39:18+08:00
draft: false
nav_weight: 1
series:
  - 文檔
categories:
  - 模塊
tags:
  - 頁尾
images:
authors:
  - HB
---

該模塊爲通用的頁尾，其帶有菜單和一些實用的子模塊，如社交鏈接。

<!--more-->

{{% hb-module footer %}}

## 站點配置

| Parameter   |  Type  | Default | Description                                              |
| ----------- | :----: | :-----: | -------------------------------------------------------- |
| `title`     | string |    -    | 站點標題。                                               |
| `copyright` | string |    -    | 站點版權，支持 Markdown 語法和 `{year}` 佔位符（今年）。 |

## 站點參數

| Parameter     |  Type  | Default | Description                    |
| ------------- | :----: | :-----: | ------------------------------ |
| `description` | string |    -    | 站點描述，支持 Markdown 語法。 |

## 頁尾模塊參數

| Parameter    |  Type   | Default | Description                |
| ------------ | :-----: | :-----: | -------------------------- |
| `powered_by` | boolean | `true`  | 是否顯示 Powered by 信息。 |
| `site_title` | string  |    -    | 用於替代默認的站點標題。   |

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}
