---
type: docs
aliases:
  - /zh-hans/docs/modules/docs/twikoo/
title: "文档 Twikoo 模块"
linkTitle: "Twikoo"
date: 2023-04-22T14:40:58+08:00
draft: false
series:
  - 文档
categories:
  - 模块
tags:
  - 评论
  - 评论引擎
  - Twikoo
images:
authors:
  - HB
---

该模块为 [Twikoo](https://github.com/imaegoo/twikoo) 提供支持，其为一个简单、安全和免费的评论系统。

<!--more-->

{{% hb-module "docs/modules/twikoo" %}}

## 站点参数

| Name     |  Type  | Required |                           Default                            | Description                                         |
| -------- | :----: | :------: | :----------------------------------------------------------: | --------------------------------------------------- |
| `env_id` | string |    Y     |                              -                               | 腾讯云环境 ID 或自搭建服务器 URL。                  |
| `js_url` | string |    Y     | `https://cdn.staticfile.org/twikoo/1.6.16/twikoo.all.min.js` | JS 脚本 URL。                                       |
| `region` | string |    -     |                              -                               | 腾讯云环境地域，如：`ap-shanghai`、`ap-guangzhou`。 |

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}

{{% bs/alert warning %}}
{{% markdownify %}}
请注意，`https://twikoo.hugomods.com/` 仅用于测试，评论数据将会被删除，你需要自行搭建服务。
{{% /markdownify %}}
{{% /bs/alert %}}
