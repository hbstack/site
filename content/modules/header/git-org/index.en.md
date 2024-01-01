---
type: docs
title: "HB Header Git Organization Module"
linkTitle: "Git Organization"
description: "This module shows information about the Git organization on the header, such as avatar, number of followers, number of repositories and total number of stars."
date: 2024-01-01T20:40:05+08:00
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
  - Git Organization
  - GitHub
images:
authors:
  - HB
---

{{% hb-module "header/modules/git-org" %}}

![Example](example.png#center "HB Framework Git Organization")

## Parameters

{{< bs/config-toggle filename=params title="Site Parameters" >}}
hb:
  header:
    git_org:
      service: github
      name: hbstack
{{< /bs/config-toggle >}}

### `service`

The Git service, `github` is supported.

### `name`

The organization name.

## API Authentication and Rate Limit

### GitHub

You may need to set the `GITHUB_TOKEN` environment var to get rid of encountering API rate limit issue.
