---
title: "内容面板模块"
linkTitle: 内容面板
date: 2023-04-14T22:30:00+08:00
draft: false
series:
  - 文档
categories:
  - 模块
tags:
  - 内容面板模块
images:
authors:
  - HB
---

该模块于单页页面显示一个内容面板，其包含了译文、评论和仓库相关按钮。

<!--more-->

{{% hb-module content-panel %}}

## 站点参数

| Parameter      |  Type  | Required | Default | Description                          |
| -------------- | :----: | :------: | :-----: | ------------------------------------ |
| `bottom`       | string |    -     | `20px`  | `bottom` 属性。                      |
| `repo`         | object |    -     |    -    | 仓库设置。                           |
| `repo.branch`  | string |    -     | `main`  | 分支名称。                           |
| `repo.repo`    | string |    Y     |    -    | 仓库名称，如 `user/name`。           |
| `repo.service` | string |    Y     |    -    | Git 服务提供商：`github`、`gitlab`。 |
| `repo.subpath` | string |    -     |    -    | 内容子路径，如 `exampleSite`。       |

{{% bs/config-toggle hugo %}}
{{% code-snippet params.toml %}}
{{% /bs/config-toggle %}}
