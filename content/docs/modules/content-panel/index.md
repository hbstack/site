---
title: "Content Panel Module"
linkTitle: Content Panel
date: 2023-04-14T22:30:00+08:00
draft: false
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
| `repo`         | object |    -     |    -    | The repository settings.                  |
| `repo.branch`  | string |    -     | `main`  | The branch name.                          |
| `repo.repo`    | string |    Y     |    -    | The repo name, i.e. `user/name`.          |
| `repo.service` | string |    Y     |    -    | Git service provider: `github`, `gitlab`. |
| `repo.subpath` | string |    -     |    -    | The content subpath, i.e. `exampleSite`.  |

{{% bs/config-toggle hugo %}}
{{% code-snippet params.toml %}}
{{% /bs/config-toggle %}}
