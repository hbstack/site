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
  - RazonYang
menu:
  footer:
    parent: docs
    weight: 34
    params:
      icon:
        vendor: fas
        name: folder-tree
---

This article will try to briefly introduce Hugo's configuration structure so that you can better understand the configuration in the documentation, even if you are new to Hugo.

<!--more-->

## Configuration Formats

Although Hugo supports `TOML`, `YAML` and `JSON`, I recommend using `TOML` or `YAML`, as `JSON` does not support annotations/comments.

## Configuration Filenames

Since Hugo `0.110.0`, Hugo will prefer to use the `hugo.*` configuration file, although `config.*` still works, but I recommend using `hugo.*` as the configuration name to distinguish the configuration of Hugo from other projects.

> HB requires Hugo `0.110.0` and above, and the configuration in the documentation is named `hugo.*`.

## Single Configuration File

The single configuration file is `hugo.*` in the project root directory.

> Hugo can also specify multiple configuration files with the `-config` parameter: `hugo --config a.toml,b.toml,c.toml`.

## Configuration Directory

Although the single configuration file is simple and convenient, it also has the obvious disadvantage that it is difficult to read once there are too many configurations, which is even worse in the case of multiple environments and multilingual mode, and the configuration directory can better cope with this situation.

{{< bootstrap/alert info >}}
HB documentations is using the configuration directory approach.
{{< /bootstrap/alert >}}

```sh
{{% docs/configuration/structure/tree %}}
```

As shown above, the site contains four environments.

| Environment   | Description                                                                   |
| ------------- | ----------------------------------------------------------------------------- |
| `_default`    | The default configuration, which will be merged into the final configuration. |
| `development` | Development environment, the `hugo server` default environment.               |
| `staging`     | Custom environment, can be loaded by `-e staging`.                            |
| `production`  | Production environment, the `hugo` default environment.                       |

Usually we need to preview other environments locally, such as the production environment, by simply passing `-hugo server -e production -b http://localhost:1313 -p 1313`.

| Configuration file | Description             |
| ------------------ | ----------------------- |
| `hugo.*`           | Hugo configuration file |
| `params.*`         | parameter configuration |
| `menus.*`          | menu configuration      |
| `languages.*`      | Language configuration  |

Hugo supports configurations for a specific language, such as `menus.en.toml`, `menus.zh-hans.toml`, `params.en.toml` and `params.zh-hans.toml` as shown above.

{{< bootstrap/alert warning >}}
{{% markdownify %}}
Please do not change the `hb*` and `hugopress*` stuff on `languages.*` and `params.*.*` configuration files.
{{% /markdownify %}}
{{< /bootstrap/alert >}}
