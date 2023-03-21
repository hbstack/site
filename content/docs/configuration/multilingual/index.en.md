---
title: Multilingual Configuration
linkTitle: Multilingual
date: 2023-02-18T10:42:27+08:00
draft: false
series:
  - Docs
categories:
  - Configuration
tags:
  - Multilingual
images:
authors:
  - RazonYang
menu:
  footer:
    parent: docs
    weight: 36
    params:
      icon:
        vendor: bs
        name: translate
---

In [Configuration Structure]({{< ref "docs/configuration/structure" >}}), we have a clear understanding of configuration, and then we will introduce how to configure languages for multilingual sites.

<!--more-->

## Site Configuration

| Name                             | Description                                                             |
| -------------------------------- | ----------------------------------------------------------------------- |
| `defaultContentLanguage`         | The default site language.                                              |
| `defaultContentLanguageInSubdir` | Whether URLs for the default language contain language codes, eg `/en`. |

{{< bootstrap/config-toggle filename=hugo >}}
{{% docs/configuration/multilingual/site-config %}}
{{< /bootstrap/config-toggle >}}

## Language Entry Properties

| Name                | Description                          |
| ------------------- | ------------------------------------ |
| `languageName`      | Name                                 |
| `languageDirection` | Language direction, such as `rlt`.   |
| `weight`            | Lower weight gets higher precedence. |
| `title`             | Site's title.                        |
| `copyright`         | Site's copyright.                    |

## Multilingual Configuration

{{< bootstrap/config-toggle filename=languages >}}
{{% docs/configuration/multilingual/config %}}
{{< /bootstrap/config-toggle >}}

## Multilingual Params and Menus.

Usually we configure site parameters and menus for each language, such as `description`, and to do this, simply create language-specific configuration files, such as:

| Configuration      | Description            |
| ------------------ | ---------------------- |
| `menus.en.*`       | English site's menus.  |
| `params.en.*`      | English site's params. |
| `menus.zh-hans.*`  | Chinese site's menus.  |
| `params.zh-hans.*` | Chinese site's params. |

For more details, please refer to [Hugo Multilingual Mode](https://gohugo.io/content-management/multilingual/).
