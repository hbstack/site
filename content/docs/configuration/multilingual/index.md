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
  - HB
menu:
  footer:
    parent: docs
    weight: 36
    params:
      icon:
        vendor: bs
        name: translate
---

Previously, we had a rough understanding of Hugo's [configuration structure]({{< ref "docs/configuration/structure" >}}), and then we will introduce how to configure multilingual sites.

<!--more-->

## Site Configuration

| Name                             | Description                                                             |
| -------------------------------- | ----------------------------------------------------------------------- |
| `defaultContentLanguage`         | The default site language.                                              |
| `defaultContentLanguageInSubdir` | Whether URLs for the default language contain language codes, eg `/en`. |

{{% bs/config-toggle hugo %}}
{{% code-snippet site-config.yaml %}}
{{% /bs/config-toggle %}}

## Language Entry Properties

| Name                | Description                          |
| ------------------- | ------------------------------------ |
| `languageName`      | Name                                 |
| `languageDirection` | Language direction, such as `rlt`.   |
| `weight`            | Lower weight gets higher precedence. |
| `title`             | Site's title.                        |
| `copyright`         | Site's copyright.                    |

## Multilingual Configuration

{{% bs/config-toggle languages %}}
{{% code-snippet config.yaml %}}
{{% /bs/config-toggle %}}

## Multilingual Params and Menus

You may want to configure some stuff for each language, such as `description`, and to do this, simply create language-specific configuration files, such as:

| Configuration      | Description            |
| ------------------ | ---------------------- |
| `menus.en.*`       | English site's menus.  |
| `params.en.*`      | English site's params. |
| `menus.zh-hans.*`  | Chinese site's menus.  |
| `params.zh-hans.*` | Chinese site's params. |

Learn more on [Hugo Multilingual Mode](https://gohugo.io/content-management/multilingual/).
