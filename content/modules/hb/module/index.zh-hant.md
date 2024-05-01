---
type: docs
title: "模塊原理"
linkTitle: "模塊"
description: "本文介紹了該模塊的目錄結構、工作原理和一些開發約定。"
date: 2024-04-25T01:33:24Z
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: boxes
series:
  - 模塊
categories:
tags:
  - SCSS
  - TypeScript
  - PurgeCSS
images:
authors:
  - HB
---

## 目錄結構

{{< page-resource-content "code/module-structure" >}}

HB 將

- 從 `scss/variables.tmpl.scss` 加載 SCSS 變量，然後導入並編譯 `scss/index.scss` 到 CSS 包中。
- 導入並編譯 `js/index.ts` 到 JS 包中。
- `purgecss.config.toml` 用於添加樣式到 PurgeCSS 安全名單，以避免其被移除。

{{% bs/alert %}}
除了 `go.mod` 和 Hugo 配置文件，其餘的文件都是可選的。
{{% /bs/alert %}}

### SCSS

#### SCSS 變量

`scss/variables.tmpl.scss` 用於定義 SCSS 變量的模板，其允許使用 Hugo 模板語法，比如從 Hugo 配置中讀取參數。

#### SCSS 入口

`scss/index.scss` 將會被自動導入並編譯到 CSS 包中，你可以使用上述定義的變量。

### TypeScript

`js/index.ts` 將會被自動導入並編譯到 JS 包中。

### PurgeCSS

`purgecss.config.toml` 用於追加樣式到 [PurgeCSS 安全列表]({{< relref "develop/purgecss" >}})，以避免樣式被移除。

## 約定

### 模塊命名約定

我們強烈推薦按照 `vendor-name` 形式對模塊進行命名，以避免和 HB 內置模塊相沖突。

- `vendor`：你的名字或組織的名稱。
- `name`：模塊的名稱。

{{% bs/alert %}}
`custom` 模塊名是為用戶保留的。
{{% /bs/alert %}}

請參閱[創建一個模塊]({{< relref "develop/module" >}})。

### 模塊參數命名約定

由於 Hugo 配置是大小寫不敏感的，推薦使用 [snake_case](https://simple.wikipedia.org/wiki/Snake_case) 命名，除此之外，你需要以模塊名對參數進行分類。

{{% bs/alert %}}
模塊名同樣需要按照 [snake_case](https://simple.wikipedia.org/wiki/Snake_case) 進行命名，因為包含 `-` 的鍵名和 TOML 相性不好。
{{% /bs/alert %}}

假設這有一個第三方的模塊，名為 `razonyang-hello`，其參數如下：

{{< page-resource-content "code/module-naming-example" >}}
