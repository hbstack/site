---
type: docs
title: "HB Header Git Repository Module"
linkTitle: "Git Repository"
description: "This module shows information about the Git repository on the header, such as latest release, number of stars and number of forks"
date: 2024-01-01T20:50:05+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: git
series:
  - Modules
categories:
  - Header
tags:
  - Git
  - Git Repository
  - GitHub
images:
authors:
  - HB
---

{{% hb-module "header/modules/git-repo" %}}

![Example](example.png#center "HB core module")

## Parameters

{{< bs/config-toggle filename=params title="Site Parameters" >}}
hb:
  header:
    git_repo:
      service: github
      owner: hbstack
      name: hb
{{< /bs/config-toggle >}}

### `service`

The Git service, `github` is supported.

### `owner`

The repository owner.

### `name`

The repository name.

## API Authentication and Rate Limit

### GitHub

You may need to set the `GITHUB_TOKEN` environment var to get rid of encountering API rate limit issue.
