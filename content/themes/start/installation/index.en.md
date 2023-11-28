---
type: docs
title: "Installation"
nav_weight: 1
nav_icon:
  vendor: bs
  name: cloud-download
description: Instructions to install the HB start theme.
date: 2023-09-15T16:26:58+08:00
draft: false
series:
  - Themes
tags:
  - Start Page
---

## Prerequisites

Read more on [prerequisites]({{< relref "docs/getting-started/prerequisites" >}}).

## Clone the Repository

```sh
git clone --depth 1 https://github.com/hbstack/theme-start
```

## Copy the Example Site

```sh
cp -r theme-start/exampleSite ./start-page
```

## Change Working Directory

```sh
cd start-page
```

## Reinitializing the Site

```sh
rm go.mod go.sum config/_default/module.yaml
hugo mod init [MODULE_PATH]
```

The `[MODULE_PATH]` is the identifier of your site, which usually the repository URL, i.e. `example.com/user/repo`.

## Import the Theme and Search Engines

{{< bs/config-toggle "config/_default/module" >}}
imports:
  - path: github.com/hbstack/theme-start
  - path: github.com/hbstack/theme-start/engines/google
  - path: github.com/hbstack/theme-start/engines/bing
{{< /bs/config-toggle >}}

## Install Dependencies

```sh
npm ci
```

## Start Hugo Server

```sh
hugo server
```

Please restart the Hugo server if the first run fails.
