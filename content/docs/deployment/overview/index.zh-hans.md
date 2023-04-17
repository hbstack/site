---
title: "部署概览"
linkTitle: "概览"
date: 2023-04-14T17:47:25+08:00
draft: false
nav_weight: 1
series:
  - 文档
categories:
  - 概览
tags:
images:
authors:
  - HB
---

本文介绍关于部署的关键点。

<!--more-->

## 部署步骤

1. 安装[构建工具]({{< relref "docs/getting-started/prerequisites#build-tools" >}})。
2. 指定生产环境的 `baseURL`，这非常重要，因为某些搜索引擎要求网站地图 URLs 为绝对地址。
3. 构建站点，如：`hugo --gc --minify`。
4. 发布站点，此步骤取决于所使用的平台。
