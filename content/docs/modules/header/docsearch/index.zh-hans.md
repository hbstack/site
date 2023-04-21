---
title: "页头 DocSearch 模块"
linkTitle: "DocSearch"
date: 2023-04-21T01:52:36+08:00
draft: false
series:
  - 文档
categories:
  - 模块
tags:
  - 搜索
  - DocSearch
images:
  - https://docsearch.algolia.com/img/docsearch-logo.svg?height=78&width=476
authors:
  - HB
---

[DocSearch](https://docsearch.algolia.com/) 是一个线上搜索引擎，其为开源文档站点提供免费服务。

<!--more-->

{{% hb-module "header/modules/docsearch" %}}

你需要[申请](https://docsearch.algolia.com/apply/)并等待批准。

## 站点参数

一旦申请通过，你将会收到一封邮件，其中包含了设置 DocSearch 模块的必要信息。

| Name         |  Type   | Required | Default | Description        |
| ------------ | :-----: | :------: | :-----: | ------------------ |
| `api_key`    | string  |    Y     |    -    | API 秘钥。         |
| `app_id`     | string  |    Y     |    -    | 应用名称。         |
| `debug`      | boolean |    -     |    -    | 是否开启调试模式。 |
| `index_name` | string  |    Y     |    -    | 索引名称。         |

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}
