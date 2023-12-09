---
type: docs
title: "HB 麵包屑導航組件"
linkTitle: "麵包屑導航"
description: HB 麵包屑導航組件可用於指示當前頁面的位置。
date: 2023-12-09T14:23:27+08:00
draft: false
nav_weight: 1000
series:
  - 模塊
categories:
  - 組件
tags:
  - 麵包屑導航
images:
authors:
  - HB
---

{{% hb-module "breadcrumb" %}}

## Partial

你需要於模板特定位置導入該 partial。

```go-html-template
{{ partial "hb/modules/breadcrumb/index" . }}
```

> 該 partial 接收頁面作為上下文。

## 頁面參數

### `nav_icon`

![Breadcrumb icons](icons.png#center)

參數 `nav_icon` 用於顯示圖標。

{{< bs/config-toggle title="Front Matter" delimiter=true >}}
nav_icon:
  vendor: bs
  name: book
{{< /bs/config-toggle >}}

更多圖標用法請參閱[圖標配置]({{< relref "docs/configuration/icons" >}})。
