---
type: docs
title: "HB 面包屑导航组件"
linkTitle: "面包屑导航"
description: HB 面包屑导航组件可用于指示当前页面的位置。
date: 2023-12-09T14:23:27+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: segmented-nav
series:
  - 模块
categories:
  - 组件
tags:
  - 面包屑导航
images:
authors:
  - HB
---

{{% hb-module "breadcrumb" %}}

## Partial

你需要于模板特定位置导入该 partial。

```go-html-template
{{ partial "hb/modules/breadcrumb/index" . }}
```

> 该 partial 接收页面作为上下文。

## 页面参数

### `nav_icon`

![Breadcrumb icons](icons.png#center)

参数 `nav_icon` 用于显示图标。

{{< bs/config-toggle title="Front Matter" delimiter=true >}}
nav_icon:
  vendor: bs
  name: book
{{< /bs/config-toggle >}}

更多图标用法请参阅[图标配置]({{< relref "docs/configuration/icons" >}})。
