---
type: docs
title: "HB 页头 Git 仓库模块"
linkTitle: "Git 仓库"
description: "此模块于页头显示关于 Git 仓库的相关信息，比如最新版本、星星数量、forks 数量。"
date: 2024-01-01T20:50:05+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: git
series:
  - 模块
categories:
  - 页头
tags:
  - Git
  - Git 仓库
  - GitHub
images:
authors:
  - HB
---

{{% hb-module "header/modules/git-repo" %}}

![Example](example.png#center "HB core module")

## 参数

{{< bs/config-toggle filename=params title="Site Parameters" >}}
hb:
  header:
    git_repo:
      service: github
      owner: hbstack
      name: hb
{{< /bs/config-toggle >}}

### `service`

Git 服务商，支持 `github`。

### `owner`

仓库所有者。

### `name`

仓库名称。

### `docker`

Docker 设置，其用于获取镜像的下载数，你需要配置 `namespace` 和 `name`。

## API 身份验证和速率限制

### GitHub

你可能需要设置 `GITHUB_TOKEN` 环境变量以避免遇到 API 速率限制问题。
