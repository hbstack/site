---
type: docs
title: "模块原理"
linkTitle: "模块"
description: "本文介绍了该模块的目录结构、工作原理和一些开发约定。"
date: 2024-04-25T01:33:24Z
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: boxes
series:
  - 模块
categories:
tags:
  - SCSS
  - TypeScript
  - PurgeCSS
images:
authors:
  - HB
---

## 目录结构

{{< page-resource-content "code/module-structure" >}}

HB 将

- 从 `scss/variables.tmpl.scss` 加载 SCSS 变量，然后导入并编译 `scss/index.scss` 到 CSS 包中。
- 导入并编译 `js/index.ts` 到 JS 包中。
- `purgecss.config.toml` 用于添加样式到 PurgeCSS 安全名单，以避免其被移除。

{{% bs/alert %}}
除了 `go.mod` 和 Hugo 配置文件，其余的文件都是可选的。
{{% /bs/alert %}}

### SCSS

#### SCSS 变量

`scss/variables.tmpl.scss` 用于定义 SCSS 变量的模板，其允许使用 Hugo 模板语法，比如从 Hugo 配置中读取参数。

#### SCSS 入口

`scss/index.scss` 将会被自动导入并编译到 CSS 包中，你可以使用上述定义的变量。

### TypeScript

`js/index.ts` 将会被自动导入并编译到 JS 包中。

### PurgeCSS

`purgecss.config.toml` 用于追加样式到 [PurgeCSS 安全列表]({{< relref "develop/purgecss" >}})，以避免样式被移除。

## 约定

### 模块命名约定

我们强烈推荐按照 `vendor-name` 形式对模块进行命名，以避免和 HB 内置模块相冲突。

- `vendor`：你的名字或组织的名称。
- `name`：模块的名称。

{{% bs/alert %}}
`custom` 模块名是为用户保留的。
{{% /bs/alert %}}

请参阅[创建一个模块]({{< relref "develop/module" >}})。

### 模块参数命名约定

由于 Hugo 配置是大小写不敏感的，推荐使用 [snake_case](https://simple.wikipedia.org/wiki/Snake_case) 命名，除此之外，你需要以模块名对参数进行分类。

{{% bs/alert %}}
模块名同样需要按照 [snake_case](https://simple.wikipedia.org/wiki/Snake_case) 进行命名，因为包含 `-` 的键名和 TOML 相性不好。
{{% /bs/alert %}}

假设这有一个第三方的模块，名为 `razonyang-hello`，其参数如下：

{{< page-resource-content "code/module-naming-example" >}}
