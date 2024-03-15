---
type: docs
title: "HB 頁頭 Git 倉庫模塊"
linkTitle: "Git 倉庫"
description: "此模塊於頁頭顯示關於 Git 倉庫的相關信息，比如最新版本、星星數量、forks 數量。"
date: 2024-01-01T20:50:05+08:00
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
  - Git 倉庫
  - GitHub
images:
authors:
  - HB
---

{{% hb-module "header/modules/git-repo" %}}

![Example](example.png#center "HB core module")

## 參數

{{< bs/config-toggle filename=params title="Site Parameters" >}}
hb:
  header:
    git_repo:
      service: github
      owner: hbstack
      name: hb
{{< /bs/config-toggle >}}

### `service`

Git 服務商，支持 `github`。

### `owner`

倉庫所有者。

### `name`

倉庫名稱。

### `docker`

Docker 設置，其用於獲取鏡像的下載數，你需要配置 `namespace` 和 `name`。

## API 身份驗證和速率限制

### GitHub

你可能需要設置 `GITHUB_TOKEN` 環境變量以避免遇到 API 速率限制問題。
