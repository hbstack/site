---
title: 多语言配置
linkTitle: 多语言
date: 2023-02-18T10:42:27+08:00
draft: false
series:
  - 文档
categories:
  - 配置
tags:
  - 多语言
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

先前我们粗略地了解了 Hugo 的[配置结构]({{< ref "docs/configuration/structure" >}})，接下来将介绍如何对多语言站点进行配置。

<!--more-->

## 站点配置

| 名称                             | 描述                                            |
| -------------------------------- | ----------------------------------------------- |
| `defaultContentLanguage`         | 站点的默认语言                                  |
| `defaultContentLanguageInSubdir` | 默认语言的 URLs 是否包含语言代码，比如：`/en`。 |

{{% bs/config-toggle hugo %}}
{{% code-snippet site-config.yaml %}}
{{% /bs/config-toggle %}}

## 语言参数

| 名称                | 描述                   |
| ------------------- | ---------------------- |
| `languageName`      | 名称                   |
| `languageDirection` | 书写方向，如：`rlt`。  |
| `weight`            | 权重，越小优先级越高。 |
| `title`             | 站点标题。             |
| `copyright`         | 站点版权。             |

## 多语言配置

{{% bs/config-toggle languages %}}
{{% code-snippet config.yaml %}}
{{% /bs/config-toggle %}}

## 多语言参数和菜单

通常我们会为不同语言配置各自的站点参数和菜单，比如 `description`，为了实现这一点，只需要创建特定语言的配置文件即可，如：

| 配置               | 描述                   |
| ------------------ | ---------------------- |
| `menus.en.*`       | 英文站点菜单。  |
| `params.en.*`      | 英文站点参数。 |
| `menus.zh-hans.*`  | 中文站点菜单。|
| `params.zh-hans.*` | 中文站点参数。|

详情请参阅 [Hugo Multilingual Mode](https://gohugo.io/content-management/multilingual/)。
