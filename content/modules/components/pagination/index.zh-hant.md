---
type: docs
title: "分頁"
linkTitle: "分頁"
date: 2023-05-13T22:32:45+08:00
draft: false
nav_icon:
  vendor: fas
  name: ellipsis
series:
  - 模塊
categories:
tags:
  - 分頁
images:
authors:
  - HB
---

該模塊附帶了一個通用的分頁模板，其允許通過參數進行配置，如對齊方式、尺寸和兄弟節點的數量。

<!--more-->

{{% hb-module pagination %}}

## 用法

模板接受一個 [Paginator](https://gohugo.io/templates/pagination/#list-paginator-pages) 變量。

```go-html-template
{{ partial "hb/modules/pagination/index" .Paginator }}
```

![Pagination example](example.png#center)

## 站點參數

| Parameter   |  Type   | Required | Default  | Description                                                          |
| ----------- | :-----: | :------: | :------: | -------------------------------------------------------------------- |
| `alignment` | string  |    -     | `center` | `center`、`start`（左側）或 `end`（右側）。                              |
| `size`      | string  |    -     |    -     | 留空（中等）, `sm`（小）或 `lg`（大）。                                   |
| `siblings`  | integer |    -     |   `2`    | 當前頁碼左右側的兄弟節點數量。                                            |

{{% bs/config-toggle hugo %}}
{{% code-snippet config.yml %}}
{{% /bs/config-toggle %}}
