---
title: "部署概覽"
linkTitle: "概覽"
date: 2023-04-14T17:47:25+08:00
draft: false
nav_weight: 1
series:
  - 文檔
categories:
  - 概覽
tags:
images:
authors:
  - HB
---

本文介紹關於部署的關鍵點。

<!--more-->

## 部署步驟

1. 安裝[構建工具]({{< relref "docs/getting-started/prerequisites#build-tools" >}})。
2. 指定生產環境的 `baseURL`，這非常重要，因爲某些搜索引擎要求網站地圖 URLs 爲絕對地址。
3. 構建站點，如：`hugo --gc --minify`。
4. 發佈站點，此步驟取決於所使用的平臺。
