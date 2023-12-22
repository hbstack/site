---
type: docs
title: "HB 修订模块"
linkTitle: "修订"
description: "描述页面的额外信息，如创建日期、修改日期等。"
date: 2023-12-22T14:45:40+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: git
series:
  - 模块
categories:
  - 修订
tags:
  - Lastmod
images:
authors:
  - HB
---

{{% hb-module "revision" %}}

## 模板

模板 `hb/modules/revision/index` 接受当前页面变量作为上下文。

```go-html-template
{{- partial "hb/modules/revision/index" . }}
```

## 站点参数

{{< bs/config-toggle filename="hugo" title="站点参数" >}}
{{< code-snippet "params.yaml" >}}
{{< /bs/config-toggle >}}

| Name | Type | Default | Required | Description |
| --- | :-: | :-: | :-: | --- |
| `date_format` | string | `:date_full` | - | 另请参阅 [time.Format](https://gohugo.io/functions/time/format/)。
| `icons` | boolean | `true` | - | 是否显示图标。
| `font_size` | string | `.825rem` | - | 文本字体大小。
| `created_at` | boolean | `true` | - | 为 `false` 时，隐藏创建日期。
