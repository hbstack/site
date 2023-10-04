---
type: docs
title: "模块概览"
linkTitle: 概览
description: 本文介绍了如何安装、卸载、升级、清理和整顿模块。
date: 2023-02-04T18:08:09+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: book
  className: text-primary
categories:
  - 模块
series:
  - 文档
tags:
  - tidy
  - clean
  - graph
authors:
  - HB
aliases:
  - /zh-hans/docs/modules/overview/
menu:
  main:
    weight: 1
    parent: modules
    params:
      icon:
        name: book
        vendor: bs
---

## 初始化模块和主题

要使用 Hugo 模块，你需要先初始化你的模块和主题。

{{% code-snippet init %}}

{{< bs/alert >}}
{{% markdownify %}}
`example.com/user/blog` 为模块和主题的模块路径。
{{% /markdownify %}}
{{< /bs/alert >}}

## 安装模块

在你的站点上安装模块是很简单的，只需于配置中导入相应的模块路径。以 `example.com/user/module` 为例。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet install.toml %}}
{{< /bs/config-toggle >}}

安装完模块后，你需要重新启动 Hugo 服务器以完全地加载模块资源。

## 卸载模块

要卸载模块，你需要从配置文件中删除或注释模块，然后执行 `hugo mod tidy`。

{{% code-snippet uninstall %}}

## 升级模块

递归升级所有模块：

{{% code-snippet upgrade-recursive %}}

更新某个模块可能的最新版本[^1]：

{{% code-snippet upgrade-latest-version %}}

升级到一个特定的版本[^1]:

{{% code-snippet upgrade-specified-version %}}

[^1]: 版本可以是任何版本、标签、分支，甚至是提交。

## 整理模块

以下命令从 `go.mod` 和 `go.sum` 中移除未使用的模块。

{{% code-snippet tidy %}}

## 清理模块缓存

删除当前站点的 Hugo 模块缓存：

{{% code-snippet clean %}}

## 打印模块图表

你也许对网站导入的模块和它们的依赖关系感兴趣：

{{% code-snippet graph %}}
