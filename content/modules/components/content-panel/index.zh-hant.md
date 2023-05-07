---
type: docs
aliases:
  - /zh-hant/docs/modules/content-panel/
title: "內容面板模塊"
linkTitle: 內容面板
date: 2023-04-14T22:30:00+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
tags:
  - 內容面板模塊
images:
authors:
  - HB
---

該模塊於單頁頁面顯示一個內容面板，其包含了譯文、評論和倉庫相關按鈕。

<!--more-->

{{% hb-module content-panel %}}

## 站點參數

| Parameter      |  Type  | Required | Default | Description                          |
| -------------- | :----: | :------: | :-----: | ------------------------------------ |
| `bottom`       | string |    -     | `20px`  | `bottom` 屬性。                      |
| `repo`         | object |    -     |    -    | 倉庫設置。                           |
| `repo.branch`  | string |    -     | `main`  | 分支名稱。                           |
| `repo.repo`    | string |    Y     |    -    | 倉庫名稱，如 `user/name`。           |
| `repo.service` | string |    Y     |    -    | Git 服務提供商：`github`、`gitlab`。 |
| `repo.subpath` | string |    -     |    -    | 內容子路徑，如 `exampleSite`。       |

{{% bs/config-toggle hugo %}}
{{% code-snippet params.toml %}}
{{% /bs/config-toggle %}}
