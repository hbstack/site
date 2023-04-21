---
title: 多語言配置
linkTitle: 多語言
date: 2023-02-18T10:42:27+08:00
draft: false
series:
  - 文檔
categories:
  - 配置
tags:
  - 多語言
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

先前我們粗略地瞭解了 Hugo 的[配置結構]({{< ref "docs/configuration/structure" >}})，接下來將介紹如何對多語言站點進行配置。

<!--more-->

## 站點配置

| 名稱                             | 描述                                            |
| -------------------------------- | ----------------------------------------------- |
| `defaultContentLanguage`         | 站點的默認語言                                  |
| `defaultContentLanguageInSubdir` | 默認語言的 URLs 是否包含語言代碼，比如：`/en`。 |

{{% bs/config-toggle hugo %}}
{{% code-snippet site-config.yaml %}}
{{% /bs/config-toggle %}}

## 語言參數

| 名稱                | 描述                   |
| ------------------- | ---------------------- |
| `languageName`      | 名稱                   |
| `languageDirection` | 書寫方向，如：`rlt`。  |
| `weight`            | 權重，越小優先級越高。 |
| `title`             | 站點標題。             |
| `copyright`         | 站點版權。             |

## 多語言配置

{{% bs/config-toggle languages %}}
{{% code-snippet config.yaml %}}
{{% /bs/config-toggle %}}

## 多語言參數和菜單

通常我們會爲不同語言配置各自的站點參數和菜單，比如 `description`，爲了實現這一點，只需要創建特定語言的配置文件即可，如：

| 配置               | 描述                   |
| ------------------ | ---------------------- |
| `menus.en.*`       | 英文站點菜單。  |
| `params.en.*`      | 英文站點參數。 |
| `menus.zh-hans.*`  | 中文站點菜單。|
| `params.zh-hans.*` | 中文站點參數。|

詳情請參閱 [Hugo Multilingual Mode](https://gohugo.io/content-management/multilingual/)。
