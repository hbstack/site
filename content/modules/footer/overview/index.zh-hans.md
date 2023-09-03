---
type: docs
aliases:
  - /zh-hans/docs/modules/footer/overview/
title: "页尾概览"
linkTitle: 概览
date: 2023-02-17T00:39:18+08:00
draft: false
nav_weight: 1
series:
  - 文档
categories:
  - 模块
tags:
  - 页尾
images:
authors:
  - HB
---

该模块为通用的页尾，其带有菜单和一些实用的子模块，如社交链接。

<!--more-->

{{% hb-module footer %}}

## 站点配置

| Parameter   |  Type  | Default | Description                                              |
| ----------- | :----: | :-----: | -------------------------------------------------------- |
| `title`     | string |    -    | 站点标题。                                               |
| `copyright` | string |    -    | 站点版权，支持 Markdown 语法和 `{year}` 占位符（今年）。 |

## 站点参数

| Parameter     |  Type  | Default | Description                    |
| ------------- | :----: | :-----: | ------------------------------ |
| `description` | string |    -    | 站点描述，支持 Markdown 语法。 |

## 页尾模块参数

| Parameter    |  Type   | Default | Description                |
| ------------ | :-----: | :-----: | -------------------------- |
| `powered_by` | boolean | `true`  | 是否显示 Powered by 信息。 |
| `site_title` | string  |    -    | 用于替代默认的站点标题。   |

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}
