---
title: "博客 Twikoo 模塊"
linkTitle: "Twikoo"
date: 2023-04-22T14:40:58+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
tags:
  - 評論
  - 評論引擎
  - Twikoo
images:
authors:
  - HB
---

該模塊爲 [Twikoo](https://github.com/imaegoo/twikoo) 提供支持，其爲一個簡單、安全和免費的評論系統。

<!--more-->

{{% hb-module "blog/modules/twikoo" %}}

## 站點參數

| Name     |  Type  | Required | Default | Description                                         |
| -------- | :----: | :------: | :-----: | --------------------------------------------------- |
| `env_id` | string |    Y     |    -    | 騰訊雲環境 ID 或 自搭建服務器 URL。                 |
| `region` | string |    -     |    -    | 騰訊雲環境地域，如：`ap-shanghai`、`ap-guangzhou`。 |

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}

{{% bs/alert warning %}}
{{% markdownify %}}
請注意，`https://twikoo.hugomods.com/` 僅用於測試，評論數據將會被刪除，你需要自行搭建服務。
{{% /markdownify %}}
{{% /bs/alert %}}
