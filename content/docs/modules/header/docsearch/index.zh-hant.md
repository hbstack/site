---
title: "頁頭 DocSearch 模塊"
linkTitle: "DocSearch"
date: 2023-04-21T01:52:36+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
tags:
  - 搜索
  - DocSearch
images:
  - https://docsearch.algolia.com/img/docsearch-logo.svg?height=78&width=476
authors:
  - HB
---

[DocSearch](https://docsearch.algolia.com/) 是一個線上搜索引擎，其爲開源文檔站點提供免費服務。

<!--more-->

{{% hb-module "header/modules/docsearch" %}}

你需要[申請](https://docsearch.algolia.com/apply/)並等待批准。

## 站點參數

一旦申請通過，你將會收到一封郵件，其中包含了設置 DocSearch 模塊的必要信息。

| Name         |  Type   | Required | Default | Description        |
| ------------ | :-----: | :------: | :-----: | ------------------ |
| `api_key`    | string  |    Y     |    -    | API 祕鑰。         |
| `app_id`     | string  |    Y     |    -    | 應用名稱。         |
| `debug`      | boolean |    -     |    -    | 是否開啓調試模式。 |
| `index_name` | string  |    Y     |    -    | 索引名稱。         |

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}
