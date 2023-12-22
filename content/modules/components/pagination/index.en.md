---
type: docs
title: "Pagination"
linkTitle: "Pagination"
date: 2023-05-13T22:32:45+08:00
draft: false
nav_icon:
  vendor: fas
  name: ellipsis
series:
  - Modules
categories:
tags:
  - Pagination
images:
authors:
  - HB
---

This module ships with an universal pagination template, which allows configuring by parameters, such as alignment, size and the number of siblings.

<!--more-->

{{% hb-module pagination %}}

## Usage

The template accepts a [Paginator](https://gohugo.io/templates/pagination/#list-paginator-pages) variable.

```go-html-template
{{ partial "hb/modules/pagination/index" .Paginator }}
```

![Pagination example](example.png#center)

## Site Parameters

| Parameter   |  Type   | Required | Default  | Description                                                          |
| ----------- | :-----: | :------: | :------: | -------------------------------------------------------------------- |
| `alignment` | string  |    -     | `center` | `center`, `start` (left) or `end` (right).                           |
| `size`      | string  |    -     |    -     | Empty (middle), `sm` (small) or `lg` (large).                       |
| `siblings`  | integer |    -     |   `2`    | The number of siblings to the left/right of the current page number. |

{{% bs/config-toggle hugo %}}
{{% code-snippet config.yml %}}
{{% /bs/config-toggle %}}
