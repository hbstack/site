---
type: docs
aliases:
  - /zh-hant/docs/modules/blog/authors/
title: "博文作者"
linkTitle: 作者
date: 2023-03-31T15:59:18+08:00
draft: false
nav_weight: 10
series:
  - 文檔
categories:
  - 模塊
tags:
  - 作者
images:
authors:
  - HB
  - Hugo
---

博客模塊默認支持多作者。

<!--more-->

## 站點配置

請確保已於 `taxonomies` 中追加了 `authors`，以啓用多作者功能。

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

## 註明作者

然後於內容前言中註明作者。

{{< bs/config-toggle >}}
{{% code-snippet authors.yaml %}}
{{< /bs/config-toggle >}}

現在該頁面由 `HB` 和 `Hugo` 合著，將會於頁面中顯示。

## Authors Parameters

詳細地介紹作者。

| Parameter     |  Type  | Description                                                                |
| ------------- | :----: | -------------------------------------------------------------------------- |
| `title`       | string | 作者名稱。                                                                 |
| `description` | string | 作者描述。                                                                 |
| `email_hash`  | string | 郵箱的 `md5` 哈希值，用於生成 Gravatar 頭像，也可以使用下面的 `images`。 |
| `images`      | array  | 第一張圖片將作爲頭像。                                                     |
| `socials`     | object | 另請參閱[社交鏈接]({{< ref "modules/components/socials" >}})。                   |

## Authors Example

以 `HB` 爲例。

{{< bs/collapse "content/authors/hb/_index.md" primary true >}}
{{< bs/config-toggle >}}
{{% code-snippet author %}}
{{< /bs/config-toggle >}}
{{< /bs/collapse >}}

> 將 `socials._color` 設置爲 `false` 以禁用彩色圖標。
