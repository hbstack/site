---
type: docs
aliases:
  - /zh-hant/docs/modules/search/
title: "搜索模塊"
linkTitle: 搜索
date: 2023-02-18T18:55:03+08:00
draft: false
nav_icon:
  vendor: bs
  name: search
series:
  - 文檔
categories:
  - 模塊
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

該模塊將 [Hugo 搜索模塊](https://github.com/hugomods/search) 集成於 HB 中，其爲一個強大的、靈活的和響應式的客戶端模糊搜索模塊。

<!--more-->

{{% hb-module search %}}

該模塊不能直接導入，你需要一個入口，比如[頁頭搜索模塊]({{< ref "modules/header/search" >}})，你也可以編寫屬於你自己的入口模塊。

## Site Parameters

詳情請參閱 [Hugo 搜索模塊參數](https://hugomods.com/en/docs/search/#site-parameters)。
