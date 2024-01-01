---
type: docs
title: "HB 页头 Git 组织模块"
linkTitle: "Git 组织"
description: "此模块于页头显示关于 Git 组织的相关信息，比如头像、关注人数、仓库数量和星星总数。"
date: 2024-01-01T20:40:05+08:00
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
  - Git 组织
  - GitHub
images:
authors:
  - HB
---

{{% hb-module "header/modules/git-org" %}}

![Example](example.png#center "HB Framework Git Organization")

## 参数

{{< bs/config-toggle filename=params title="Site Parameters" >}}
hb:
  header:
    git_org:
      service: github
      name: hbstack
{{< /bs/config-toggle >}}

### `service`

Git 服务商，支持 `github`。

### `name`

组织名称。

## API 身份验证和速率限制

### GitHub

你可能需要设置 `GITHUB_TOKEN` 环境变量以避免遇到 API 速率限制问题。
