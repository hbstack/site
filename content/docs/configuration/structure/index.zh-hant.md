---
title: "配置結構"
date: 2023-02-17T23:18:18+08:00
draft: false
nav_weight: 1
series:
  - 文檔
categories:
  - 配置
tags:
images:
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

本文將盡量簡單地介紹 Hugo 的配置結構。

<!--more-->

## 配置格式

雖然 Hugo 支持 `TOML`、`YAML` 和 `JSON`，不過筆者建議使用 `TOML` 或 `YAML`，因爲 `JSON` 並不支持註釋。

## 配置名稱

自 Hugo `0.110.0` 版本後，Hugo 將優先使用 `hugo.*` 配置文件，儘管 `config.*` 仍起作用，不過筆者建議使用 `hugo.*` 作爲配置名稱，以與其他項目的配置區分開來。

## 單配置文件

單配置文件是指在項目根目錄下的 `hugo.*`。

> Hugo 也可以通過 `--config` 參數指定多個配置文件：`hugo --config a.toml,b.toml,c.toml`。

## 配置目錄

雖然單配置文件簡單便捷，但缺點也很明顯，一旦配置過多，就難以閱讀，在多環境、多語言的情況下更爲糟糕，而配置目錄可以更好地應對這種情況。

{{% code-snippet structure %}}

如上所示，站點們定義了四種環境：

| 環境          | 描述                                     |
| ------------- | ---------------------------------------- |
| `_default`    | 默認配置，會被合併到最終的配置中去。     |
| `development` | 開發環境，`hugo server` 默認環境。       |
| `staging`     | 自定義環境，可以通過 `-e staging` 加載。 |
| `production`  | 生產環境，`hugo` 默認環境。              |

{{< bs/alert danger >}}
{{% markdownify %}}
若需使用 Hugo Server 模擬生產環境，需要指定 `--disableFastRender` 和 `--renderToDisk`。
{{% /markdownify %}}
{{< /bs/alert >}}

| 配置文件      | 描述          |
| ------------- | ------------- |
| `hugo.*`      | Hugo 配置文件 |
| `params.*`    | 參數配置      |
| `menus.*`     | 菜單配置      |
| `languages.*` | 語言配置      |

Hugo 支持對某一特定語言進行配置，如上所展示的 `menus.en.toml`、`menus.zh-hans.toml`、`params.en.toml` 和 `params.zh-hans.toml`。

{{< bs/alert danger >}}
{{% markdownify %}}
請勿於 `languages.*` 和 `params.*.*` 中更改 `hb*` 和 `hugopress*` 相關的配置。
{{% /markdownify %}}
{{< /bs/alert >}}

## 瞭解更多

* [Configure Hugo](https://gohugo.io/getting-started/configuration/)
