---
type: docs
title: "HB 頁頭 Git 組織模塊"
linkTitle: "Git 組織"
description: "此模塊於頁頭顯示關於 Git 組織的相關信息，比如頭像、關注人數、倉庫數量和星星總數。"
date: 2024-01-01T20:40:05+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: git
series:
  - 模塊
categories:
  - 頁頭
tags:
  - Git
  - Git 組織
  - GitHub
images:
authors:
  - HB
---

{{% hb-module "header/modules/git-org" %}}

![Example](example.png#center "HB Framework Git Organization")

## 參數

{{< bs/config-toggle filename=params title="Site Parameters" >}}
hb:
  header:
    git_org:
      service: github
      name: hbstack
{{< /bs/config-toggle >}}

### `service`

Git 服務商，支持 `github`。

### `name`

組織名稱。

## API 身份驗證和速率限制

### GitHub

你可能需要設置 `GITHUB_TOKEN` 環境變量以避免遇到 API 速率限制問題。
