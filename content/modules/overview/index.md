---
type: docs
title: "Modules Overview"
description: This article shows how to install, uninstall, upgrade, clean and tidy modules.
linkTitle: Overview
date: 2023-02-04T18:08:09+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: book
  className: text-primary
categories:
  - Modules
series:
  - Docs
tags:
  - clean
  - tidy
  - graph
authors:
  - HB
aliases:
  - /en/docs/modules/overview/
menu:
  main:
    weight: 1
    parent: modules
    params:
      icon:
        name: book
        vendor: bs
---

## Initialize Modules and Themes

To use Hugo modules, you need to initialize your modules and themes first.

{{% code-snippet init %}}

{{< bs/alert >}}
{{% markdownify %}}
The `example.com/user/blog` is the module path of modules and themes, which is usually the repository URL.
{{% /markdownify %}}
{{< /bs/alert >}}

## Install Modules

It's quite simply to add a module into your site, just import the module path in configuration. Let's take the `example.com/user/module` as an example.

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet install.toml %}}
{{< /bs/config-toggle >}}

You'll need to restart the Hugo server to load the module's assets fully after installing modules.

{{< bs/alert warning >}}
The priority of modules is from top to the bottom, we recommended putting the newer modules on the top to get rid of getting overridden by others.
{{< /bs/alert >}}

## Uninstall Modules

To uninstall modules, you need to remove or comment the modules from the configuration file, and then execute `hugo mod tidy`.

{{% code-snippet uninstall %}}

## Upgrade Modules

Upgrade all modules recursive:

{{% code-snippet upgrade-recursive %}}

Update the latest version[^1] possible for a given module:

{{% code-snippet upgrade-latest-version %}}

Upgrade a specific version[^1]:

{{% code-snippet upgrade-specified-version %}}

[^1]: The version can be any releases, tags, branches, or even commits.

## Tidy Modules

The following command remove unused modules from `go.mod` and `go.sum`.

{{% code-snippet tidy %}}

## Clean Modules Cache

Delete the Hugo Module cache for the current site:

{{% code-snippet clean %}}

## Print Modules Graph

You may be interested in which modules the site imports and their dependencies.

{{% code-snippet graph %}}
