---
title: "安装到已有站点"
linkTitle: "安装到已有站点"
date: 2023-06-18T10:49:47+08:00
series:
  - 文档
categories:
  - 安装
tags:
images:
authors:
  - HB
---

本文介绍如何安装 HB 和模块到已有站点。

<!--more-->

## 初始化 Hugo 模块

{{< bs/alert >}}
{{% markdownify %}}
如果站点目录有 `go.mod`，则跳过本步骤，因为你已经初始化过模块了。
{{% /markdownify %}}
{{< /bs/alert >}}

我们需要初始化站点，使其作为一个模块，以使用 Hugo 模块。请将 `github.com/user/repo` 替换为你的。

{{% code-snippet initialize-module %}}

## 安装构建工具

HB 要求安装一些[构建工具]({{< relref "docs/getting-started/prerequisites#build-tools" >}})。

## 调整配置

本教程使用[推荐的元模块]({{< relref "modules/meta#recommended-meta-module" >}})作为使用 HB 的起点，你可以在[模块]({{< relref "modules" >}})页面找到更多可用的模块。

1. 如果存在 `theme`，则删除。
1. 确保设置了以下必要的配置。

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

### 更改 PWA 缓存策略

为了避免本地环境的缓存问题，建议更改 PWA 缓存策略。

{{< bs/config-toggle "config/development/params" >}}
{{% code-snippet pwa.yaml %}}
{{< /bs/config-toggle >}}

## 预览和调整

现在你应该可以启动 Hugo 服务器以预览，以及调整模块。

## 问题排查

导致构建失败的原因有很多。

- 缺少之前主题的短代码。
- 与之前的配置和参数冲突。
- 更多请参阅[问题排查]({{< relref "docs/troubleshooting" >}})页面。

如果你不知道如何解决，请随意[提问](https://github.com/orgs/hbstack/discussions/new?category=q-a)。
