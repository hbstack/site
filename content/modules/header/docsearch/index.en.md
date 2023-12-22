---
type: docs
aliases:
  - /en/docs/modules/header/docsearch/
title: "Header DocSearch Module"
linkTitle: "DocSearch"
date: 2023-04-21T01:52:36+08:00
draft: false
nav_icon:
  vendor: bs
  name: search
series:
  - Docs
categories:
  - Module
tags:
  - Search
  - DocSearch
images:
  - https://docsearch.algolia.com/img/docsearch-logo.svg?height=78&width=476
authors:
  - HB
---

[DocSearch](https://docsearch.algolia.com/) is a free online search service for open source documentations sites.

<!--more-->

{{% hb-module "header/modules/docsearch" %}}

You need to [apply](https://docsearch.algolia.com/apply/) and waiting for approval.

## Site Parameters

Once your request was approved, you'll be emailed with the necessary information to set up the DocSearch module.

| Name         |  Type   | Required | Default | Description                   |
| ------------ | :-----: | :------: | :-----: | ----------------------------- |
| `api_key`    | string  |    Y     |    -    | The API key.                  |
| `app_id`     | string  |    Y     |    -    | The App name.                 |
| `debug`      | boolean |    -     |    -    | Whether to enable debug mode. |
| `index_name` | string  |    Y     |    -    | The index name.               |

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}
