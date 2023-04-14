---
title: "文档概览"
linkTitle: "概览"
date: 2023-03-31T15:45:47+08:00
draft: false
nav_weight: 1
series:
  - 文档
categories:
  - 模块
tags:
images:
---

文档模块为文档站点提供了基本的布局和模板，其对于编写项目文档、数字花园、用户指南、教程等十分实用。

<!--more-->

{{% hb-module docs %}}

## 站点参数

| Parameter     |  Type  |   Default    | Description |
| ------------- | :----: | :----------: | ----------- |
| `date_format` | string | `:date_long` | 日期格式。  |

{{< bs/config-toggle params >}}
{{% code-snippet params.toml %}}
{{< /bs/config-toggle >}}
