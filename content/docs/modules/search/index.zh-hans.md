---
title: "搜索模块"
linkTitle: 搜索
date: 2023-02-18T18:55:03+08:00
draft: false
series:
  - 文档
categories:
  - 模块
tags:
  - 搜索
images:
featured: true
authors:
  - HB
# menu:
#   footer:
#     identifier: hb-search
#     parent: hb-modules
#     weight: 26
#     params:
#       icon:
#         vendor: bs
#         name: search
---

该模块将 [Hugo 搜索模块](https://github.com/hugomods/search) 集成于 HB 中，其为一个强大的、灵活的和响应式的客户端模糊搜索模块。

<!--more-->

{{% hb-module search %}}

该模块不能直接导入，你需要一个入口，比如[页头搜索模块]({{< ref "docs/modules/header/search" >}})，你也可以编写属于你自己的入口模块。

## Site Parameters

详情请参阅 [Hugo 搜索模块参数](https://hugomods.com/en/docs/search/#site-parameters)。
