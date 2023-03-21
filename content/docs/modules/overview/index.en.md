---
title: "Modules Overview"
linkTitle: Overview
date: 2023-02-04T18:08:09+08:00
draft: false
nav_weight: 1
categories:
  - Module
series:
  - Docs
tags:
authors:
  - RazonYang
---

This article shows how to install, uninstall and upgrade modules.

<!--more-->

## Install Modules

It's quite simply to add a module into your site, just import the module path in configuration. Let's take the [back to top]({{< ref "docs/modules/back-to-top" >}}) module as an example.

{{< bootstrap/config-toggle filename=hugo >}}
[[module.import]]
path = "github.com/hbstack/back-to-top"
{{< /bootstrap/config-toggle >}}

You'll need to restart the Hugo server to load the assets fully after installing modules.

## Uninstall Modules

Remove or comment the modules to uninstall.

```toml
# [[module.import]]
# path = "github.com/hbstack/back-to-top"
```

## Upgrade Modules

upgrade all modules recursive:

```sh
hugo mod get -u ./...
```

update the latest version possible for a given module:

```sh
hugo mod get -u github.com/hbstack/back-to-top
```

upgrade a specific version:

```sh
hugo mod get -u github.com/hbstack/back-to-top@v0.2.0
```
