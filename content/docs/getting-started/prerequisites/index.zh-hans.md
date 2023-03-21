---
title: "先决条件"
date: 2022-12-19T14:53:42+08:00
draft: false
tags:
  - NPM
  - Yarn
  - Go
  - Hugo
  - Git
  - NodeJS
  - PurgeCSS
  - RTLCSS
  - Autoprefixer
categories:
  - 配置
  - 构建工具
series:
  - 文档
authors:
  - RazonYang
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

在使用或开发 HB 及其模块之前，请确保你满足先决条件。

## 必要配置

{{< bootstrap/config-toggle filename=hugo >}}
[build]
  writeStats = true
{{< /bootstrap/config-toggle >}}

- 参数 `build.writeStats` 用于收集站点所使用到的 classes、ids 和 tags，以供 PurgeCSS 清除未使用的 CSS。

## 构建工具

| 名称 | 版本 | 描述 |
| --- | :--: | --- |
| [Hugo](https://gohugo.io/installation/) | ![Version](https://img.shields.io/badge/dynamic/json?color=blue&label=requirements&query=requirements&url=https://api.razonyang.com/v1/hugo/modules/github.com/hbstack/hb&style=flat-square) | 用于构建站点。
| [Go](https://go.dev/dl/) | `>=1.12` | 用于安装 [Hugo 模块](https://gohugo.io/hugo-modules/use-modules/#prerequisite)。
| [Git](https://git-scm.com/downloads) | - | 版本控制系统。
| [NodeJS](https://nodejs.org/) | `>=16` | 用于构建 JavaScript。
| [PostCSS CLI](https://github.com/postcss/postcss-cli) | - | 用于转变样式。
| [RTLCSS](https://rtlcss.com/) | - | 将 LTR CSS 转换为 RTL，如果你没有 RTL 网站则可选。
| [Autoprefixer](https://github.com/postcss/autoprefixer) | - | 解析 CSS 并在 Can I Use 规则中添加供应商前缀。
| [PurgeCSS](https://purgecss.com/) | - | 移除未使用的 CSS。

> 推荐尽可能使用以上构建工具的最新版本。

HB 并不需要 NPM 或 Yarn，但建议有一个，以便用一个命令安装 PostCSS CLI、RTLCSS、Autoprefixer 和 PurgeCSS。

```sh
npm i postcss-cli @fullhuman/postcss-purgecss autoprefixer rtlcss
```

你也可以使用 `-g` 或 `--global` 标志于在全局范围内安装这些软件包。

You can also install those packages globally (with `-g` or `--global` flag).

```sh
sudo npm i -g postcss-cli @fullhuman/postcss-purgecss autoprefixer rtlcss
```

## 注意

### 请勿于语言范围配置中修改 `hb` 和 `hugopress` 参数

HB 依赖于跨模块的配置，但有一个已知的[问题](https://github.com/gohugoio/hugo/issues/10620)，即语言范围内的参数将覆盖参数，而不是深度合并，这将破坏跨模块的配置。

比如以下的配置例子是**不**允许的。

{{< bootstrap/config-toggle filename=hugo >}}
[[language.en]]
[language.en.params.hb]
foo = "bar"
[language.en.params.hugopress]
foo = "bar"
{{< /bootstrap/config-toggle >}}
