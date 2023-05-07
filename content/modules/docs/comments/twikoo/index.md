---
type: docs
aliases:
  - /en/docs/modules/docs/twikoo/
title: "Docs Twikoo Module"
linkTitle: "Twikoo"
date: 2023-04-22T14:40:58+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - Comments
  - Comments Engine
  - Twikoo
images:
authors:
  - HB
---

This module add support for the [Twikoo](https://github.com/imaegoo/twikoo), a simple, safe and free comments system.

<!--more-->

{{% hb-module "docs/modules/twikoo" %}}

## Site Parameters

| Name     |  Type  | Required |                           Default                            | Description                                                      |
| -------- | :----: | :------: | :----------------------------------------------------------: | ---------------------------------------------------------------- |
| `env_id` | string |    Y     |                              -                               | The Tencent Cloud environment ID or self-hosted endpoint.        |
| `js_url` | string |    Y     | `https://cdn.staticfile.org/twikoo/1.6.16/twikoo.all.min.js` | The script URL.                                                  |
| `region` | string |    -     |                              -                               | The Tencent Cloud region, such as `ap-shanghai`, `ap-guangzhou`. |

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}

{{% bs/alert warning %}}
{{% markdownify %}}
Please note that `https://twikoo.hugomods.com/` is used for testing, the comments data will be removed, you need to host the service yourself.
{{% /markdownify %}}
{{% /bs/alert %}}
