---
type: docs
aliases:
  - /en/docs/modules/content-panel/
title: "Content Panel Module"
linkTitle: Content Panel
date: 2023-04-14T22:30:00+08:00
draft: false
nav_icon:
  vendor: bs
  name: gear
series:
  - Docs
categories:
  - Modules
tags:
  - Content Panel
images:
authors:
  - HB
---

This module display a content panel on single pages, which includes translations, comments and repo buttons.

<!--more-->

{{% hb-module content-panel %}}

## Site Parameters

| Parameter      |  Type  | Required | Default | Description                               |
| -------------- | :----: | :------: | :-----: | ----------------------------------------- |
| `bottom`       | string |    -     | `20px`  | The `bottom` property.                    |
| `comments`     | boolean|    -     | `true`  | When `false` disable comments globally.    |
| `repo`         | object |    -     |    -    | The repository settings.                  |
| `repo.branch`  | string |    -     | `main`  | The branch name.                          |
| `repo.repo`    | string |    Y     |    -    | The repo name, i.e. `user/name`.          |
| `repo.service` | string |    Y     |    -    | Git service provider: `github`, `gitlab`, `gitee`, `codeberg`. |
| `repo.service_baseurl` | string | - |    -   | Self-hosted Git service URL.              |
| `repo.subpath` | string |    -     |    -    | The content subpath, i.e. `exampleSite`.  |

{{% bs/config-toggle hugo %}}
{{% code-snippet params.toml %}}
{{% /bs/config-toggle %}}
