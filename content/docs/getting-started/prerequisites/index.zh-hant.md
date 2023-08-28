---
title: "先決條件"
description: |
  HB 是一個功能豐富的框架，但同時也具有着一定的複雜性。本文將詳細列出 HB 的環境要求，以便你可以正常地開發和使用 HB 模塊和主題。
date: 2022-12-19T14:53:42+08:00
draft: false
tags:
  - NPM
  - Go
  - Hugo
  - Git
  - Node.js
  - PurgeCSS
  - RTLCSS
  - Autoprefixer
  - PostCSS
categories:
  - 配置
  - 構建工具
series:
  - 文檔
authors:
  - HB
nav_weight: 2
menu:
  footer:
    parent: docs
    weight: 32
    params:
      icon:
        vendor: bs
        name: card-checklist
---

## 必要配置

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

{{% bs/collapse build.writeStats primary true %}}
用於收集站點所使用到的 `classes`、`ids` 和 `tags`，以供 PurgeCSS 清除未使用的 CSS。
{{% /bs/collapse %}}

## 構建工具

推薦儘可能地使用以下構建工具的最新版本。

### Go

HB 是一個模塊化的框架，需要[安裝 Go 語言](https://golang.google.cn/dl/)以下載和更新 [Hugo 模塊](https://gohugo.io/hugo-modules/use-modules/#prerequisite)。

{{% bs/collapse "Arch Linux 安裝 Go" %}}
{{< code-snippet install-go-on-arch-linux >}}
{{% /bs/collapse %}}

### Hugo

![Version](https://img.shields.io/badge/dynamic/json?color=blue&label=requirements&query=requirements&url=https://api.razonyang.com/v1/hugo/modules/github.com/hbstack/hb&style=flat-square)

HB 使用 Hugo Pipes 來編譯 SCSS，因此需要擴展版（**extended**）的 [Hugo](https://gohugo.io/installation/)。

{{% bs/collapse "通過 Go 安裝 Hugo" %}}
若你位於中國大陸而沒有 VPN 時，你需要先設置 [Go 代理服務器](https://hugomods.com/zh-hant/blog/2023/04/go-和-hugo-代理服務器/)。
{{< code-snippet install-hugo-via-go >}}
{{% /bs/collapse %}}

### Git

版本控制系統，可通過[下載](https://git-scm.com/downloads)頁面獲得。

{{% bs/collapse "Arch Linux 安裝 Git" %}}
{{< code-snippet install-git-on-arch-linux >}}
{{% /bs/collapse %}}

### Node.js

HB 依賴以下 [Node.js](https://nodejs.org/) 包。

{{% bs/collapse "Arch Linux 安裝 Node.js" %}}
{{< code-snippet install-node-js-on-arch-linux >}}
{{% /bs/collapse %}}

| 名稱         | 描述                                               |
| ------------ | -------------------------------------------------- |
| PostCSS CLI  | 用於轉變樣式。                                     |
| RTLCSS       | 將 LTR CSS 轉換爲 RTL，如果你沒有 RTL 網站則可選。 |
| Autoprefixer | 解析 CSS 並在 Can I Use 規則中添加對應的前綴。     |
| PurgeCSS     | 移除未使用的 CSS。                                 |

NPM 已被包含於 Node.js 安裝中，你可以選擇局部或全局地安裝這些包。

{{% bs/collapse "局部安裝" primary true %}}
{{< code-snippet npm-i >}}
局部安裝將依賴寫入 `package.json`，以便部署時通過 `npm i` 安裝這些包，而無需記住這些繁雜的包名。
{{% /bs/collapse %}}

{{% bs/collapse "全局安裝" success true %}}
{{< code-snippet npm-i-g >}}
該命令只需執行一次，後續的 HB 站點無需再次執行此命令。
{{% /bs/collapse %}}

兩者都是有效的，HB 會優先局部查找需要的包。

## 注意

### Hugo Server 生產模式的必要參數

若需要在生產模式下使用 Hugo Server，需要指定 `--disableFastRender` 和 `--renderToDisk`，否則 PurgeCSS 和 PostCSS 會出現意想不到的問題。

{{% code-snippet hugo-server-production %}}

### 請勿於語言範圍配置中修改 `hb` 和 `hugopress` 參數

HB 依賴於模塊間配置的深度合併，然而語言範圍的參數將會覆蓋覆蓋模塊的配置，而非深度合併，這將導致各種意想不到的問題。比如以下的配置示例是**不允許**的。

{{< bs/config-toggle hugo >}}
{{< code-snippet invalid-multilingual-config.yaml >}}
{{< /bs/config-toggle >}}

### 請禁用 Cloudflare Rocket Loader

Cloudflare Rocket Loader 缺少了 `DOMContentLoaded` 事件，會導致很多模塊失效，即便我們爲此提供了一個[補丁](https://github.com/hbstack/cloudflare-rocket-loader)，但得不償失，禁用該功能是目前最佳選擇。
