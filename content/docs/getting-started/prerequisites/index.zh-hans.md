---
title: "先决条件"
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
  - 构建工具
series:
  - 文档
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

HB 是一个功能丰富的框架，但同时也具有着一定的复杂性。本文将详细列出 HB 的环境要求，以便你可以正常地开发和使用 HB 模块和主题。

## 必要配置

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

{{% bs/collapse build.writeStats primary true %}}
用于收集站点所使用到的 `classes`、`ids` 和 `tags`，以供 PurgeCSS 清除未使用的 CSS。
{{% /bs/collapse %}}

## 构建工具

推荐尽可能地使用以下构建工具的最新版本。

### Go

HB 是一个模块化的框架，需要[安装 Go 语言](https://golang.google.cn/dl/)以下载和更新 [Hugo 模块](https://gohugo.io/hugo-modules/use-modules/#prerequisite)。

{{% bs/collapse "Arch Linux 安装 Go" %}}
{{< code-snippet install-go-on-arch-linux >}}
{{% /bs/collapse %}}

### Hugo

![Version](https://img.shields.io/badge/dynamic/json?color=blue&label=requirements&query=requirements&url=https://api.razonyang.com/v1/hugo/modules/github.com/hbstack/hb&style=flat-square)

HB 使用 Hugo Pipes 来编译 SCSS，因此需要扩展版（**extended**）的 [Hugo](https://gohugo.io/installation/)。

{{% bs/collapse "通过 Go 安装 Hugo" %}}
若你位于中国大陆而没有 VPN 时，你需要先设置 [Go 代理服务器](https://hugomods.com/zh-hans/blog/2023/04/go-和-hugo-代理服务器/)。
{{< code-snippet install-hugo-via-go >}}
{{% /bs/collapse %}}

### Git

版本控制系统，可通过[下载](https://git-scm.com/downloads)页面获得。

{{% bs/collapse "Arch Linux 安装 Git" %}}
{{< code-snippet install-git-on-arch-linux >}}
{{% /bs/collapse %}}

### Node.js

HB 依赖以下 [Node.js](https://nodejs.org/) 包。

{{% bs/collapse "Arch Linux 安装 Node.js" %}}
{{< code-snippet install-node-js-on-arch-linux >}}
{{% /bs/collapse %}}

| 名称         | 描述                                               |
| ------------ | -------------------------------------------------- |
| PostCSS CLI  | 用于转变样式。                                     |
| RTLCSS       | 将 LTR CSS 转换为 RTL，如果你没有 RTL 网站则可选。 |
| Autoprefixer | 解析 CSS 并在 Can I Use 规则中添加对应的前缀。     |
| PurgeCSS     | 移除未使用的 CSS。                                 |

NPM 已被包含于 Node.js 安装中，你可以选择局部或全局地安装这些包。

{{% bs/collapse "局部安装" primary true %}}
{{< code-snippet npm-i >}}
局部安装将依赖写入 `package.json`，以便部署时通过 `npm i` 安装这些包，而无需记住这些繁杂的包名。
{{% /bs/collapse %}}

{{% bs/collapse "全局安装" success true %}}
{{< code-snippet npm-i-g >}}
全局安装只需执行一次，后续的 HB 站点无需再次执行此命令。
{{% /bs/collapse %}}

两者都是有效的，HB 会优先局部查找需要的包。

## 注意

### 请勿于语言范围配置中修改 `hb` 和 `hugopress` 参数

HB 依赖于模块间配置的深度合并，然而语言范围的参数将会覆盖覆盖模块的配置，而非深度合并，这将导致各种意想不到的问题。比如以下的配置示例是**不允许**的。

{{< bs/config-toggle hugo >}}
{{< code-snippet invalid-multilingual-config.yaml >}}
{{< /bs/config-toggle >}}

### 请禁用 Cloudflare Rocket Loader

Cloudflare Rocket Loader 缺少了 `DOMContentLoaded` 事件，会导致很多模块失效，即便我们为此提供了一个[补丁](https://github.com/hbstack/cloudflare-rocket-loader)，但得不偿失，禁用该功能是目前最佳选择。
