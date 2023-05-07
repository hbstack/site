---
type: docs
title: "核心模块"
linkTitle: "核心"
nav_weight: 10
nav_icon:
  vendor: bs
  name: gear-wide-connected
  className: text-success
date: 2023-04-12T22:28:04+08:00
draft: false
series:
  - 文档
categories:
  - 模块
tags:
images:
authors:
  - HB
menu:
  footer:
    parent: hb-modules
    weight: 1
    params:
      icon:
        vendor: simple
        name: hugo
aliases:
  - /zh-hans/docs/modules/hb/
---

`github.com/hbstack/hb` 是 HB 框架的核心模块，其自动加载和编译模块的 SCSS 和 TypeScript，以及渲染 HTML。

<!--more-->

{{% hb-module hb %}}

## 它是如何工作的？

HB 是建立在 [HugoPress](https://hugomods.com/en/docs/hugopress/) 之上的，这是一个与用户界面无关的模块化框架，其定义了几个钩子用于自动加载模块。

## 功能特性

- 实现了 [HugoPress](https://hugomods.com/en/docs/hugopress/)。
- 基础模板。
- 修复重定向页面上的暗模式闪烁问题。

## 模块

### 模块结构

HB 模块**必须**放在 `assets/hb/modules` 文件夹中，其结构如下。

{{%code-snippet module-structure %}}

HB 将会：

- 从 `scss/variables.tmpl.scss` 中加载 SCSS 变量，然后加载并编译 `scss/index.scss` 到 CSS 包中。
- 加载并编译 `js/index.ts` 到 JS 包中。
- `purgecss.config.toml` 用于将样式添加到 PurgeCSS 白名单中，以避免被删除。

{{< bs/alert >}}
这些文件都不是必需的。
{{< /bs/alert >}}

### 模块命名约定

我们建议将你的 HB 模块命名为：`vendor-name`，以避免与 HB 内置模块发生冲突。

- `vendor`：你或组织的名称。
- `name`：模块的名称。

{{< bs/alert >}}
{{% markdownify %}}
`custom` 是为用户保留的。
{{% /markdownify %}}
{{< /bs/alert >}}

另请参阅[创建模块]({{< relref "docs/develop/module" >}})。

## 站点参数

| Name              |  Type   | Required |      Default      | Description                       |
| ----------------- | :-----: | :------: | :---------------: | --------------------------------- |
| `css_bundle_name` | string  |    -     |       `hb`        | CSS 的名称。                      |
| `debug`           | boolean |    -     |      `false`      | 调试模式。                        |
| `js_bundle_name`  | string  |    -     |       `hb`        | JS 的名称。                       |
| `logo`            | string  |    -     | `images/logo.png` | Logo 路径，相对于 `assets` 目录。 |

{{< bs/config-toggle hugo >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}

## HugoPress 属性

| Name      | Description          |
| --------- | -------------------- |
| `hb-main` | `.hb-main` HTML 块。 |

## HugoPress 钩子

| Name            | Description                |
| --------------- | -------------------------- |
| `hb-body-begin` | 于 `body-begin` 钩子之后。 |
| `hb-body-end`   | 于 `body-end` 钩子之前。   |
