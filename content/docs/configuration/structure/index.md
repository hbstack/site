---
title: "Configuration Structure"
linkTitle: "Structure"
date: 2023-02-17T23:18:18+08:00
draft: false
series:
  - Docs
categories:
  - Configuration
tags:
images:
nav_weight: 1
authors:
  - HB
menu:
  footer:
    parent: docs
    weight: 34
    params:
      icon:
        vendor: fas
        name: folder-tree
---

This article will try to briefly introduce Hugo's configuration structure.

<!--more-->

## Configuration Formats

Although Hugo supports `TOML`, `YAML` and `JSON`, I recommend using `TOML` or `YAML`, as `JSON` does not support annotations/comments.

## Configuration Filenames

Since Hugo `0.110.0`, Hugo will prefer to use the `hugo.*` configuration file, although `config.*` still works, but I recommend using `hugo.*` to distinguish it from the configuration of other projects.

## Single Configuration File

The single configuration file is `hugo.*` in the project root directory.

> Hugo can also specify multiple configuration files with the `-config` parameter: `hugo --config a.toml,b.toml,c.toml`.

## Configuration Directory

Although the single configuration file is simple and convenient, it also has the obvious disadvantage that it is difficult to read once there are too many configurations, which is even worse in the case of multiple environments and multilingual mode, and the configuration directory can better cope with this situation.

{{% code-snippet structure %}}

As shown above, the site contains four environments.

| Environment   | Description                                                                   |
| ------------- | ----------------------------------------------------------------------------- |
| `_default`    | The default configuration, which will be merged into the final configuration. |
| `development` | Development environment, the `hugo server` default environment.               |
| `staging`     | Custom environment, can be loaded by `-e staging`.                            |
| `production`  | Production environment, the `hugo` default environment.                       |

| Configuration file | Description             |
| ------------------ | ----------------------- |
| `hugo.*`           | Hugo configuration file |
| `params.*`         | parameter configuration |
| `menus.*`          | menu configuration      |
| `languages.*`      | Language configuration  |

Hugo supports configuring for a specific language, such as `menus.en.toml`, `menus.zh-hans.toml`, `params.en.toml` and `params.zh-hans.toml` as shown above.

{{< bs/alert danger >}}
{{% markdownify %}}
Please do not change the `hb*` and `hugopress*` stuff on `languages.*` and `params.*.*` configuration files.
{{% /markdownify %}}
{{< /bs/alert >}}

## Learn More

* [Configure Hugo](https://gohugo.io/getting-started/configuration/)
