---
type: docs
title: "分页"
linkTitle: "分页"
date: 2023-05-13T22:32:45+08:00
draft: false
nav_icon:
  vendor: fas
  name: ellipsis
series:
  - 模块
categories:
tags:
  - 分页
images:
authors:
  - HB
---

该模块附带了一个通用的分页模板，其允许通过参数进行配置，如对齐方式、尺寸和兄弟节点的数量。

<!--more-->

{{% hb-module pagination %}}

## 用法

模板接受一个 [Paginator](https://gohugo.io/templates/pagination/#list-paginator-pages) 变量。

```go-html-template
{{ partial "hb/modules/pagination/index" .Paginator }}
```

![Pagination example](example.png#center)

## 站点参数

| Parameter   |  Type   | Required | Default  | Description                                                          |
| ----------- | :-----: | :------: | :------: | -------------------------------------------------------------------- |
| `alignment` | string  |    -     | `center` | `center`、`start`（左侧）或 `end`（右侧）。                              |
| `size`      | string  |    -     |    -     | 留空（中等）, `sm`（小）或 `lg`（大）。                                   |
| `siblings`  | integer |    -     |   `2`    | 当前页码左右侧的兄弟节点数量。                                            |

{{% bs/config-toggle hugo %}}
{{% code-snippet config.yml %}}
{{% /bs/config-toggle %}}
