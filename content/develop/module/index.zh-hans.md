---
type: docs
aliases:
  - /zh-hans/docs/develop/module/
title: "模块指南"
date: 2023-02-16T14:08:34+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: boxes
  className: text-primary
series:
  - 文档
categories:
  - 开发
tags:
  - 文档
  - SCSS
  - Hooks
  - TypeScript
  - JavaScript
  - CSS
images:
authors:
  - HB
---

想要创建和分享你的创意 HB 模块吗？这里有你想要知道的一切。

## 示例功能

> [源码](https://github.com/hbstack/hello)。

让我们从 `hello` 示例开始，其：

- 于 `<html>` 和 `<body>` 上追加属性。
- 使用钩子以添加自定义 HTML 标记，如元标记、CSS 和 JS。
- 于页面显示问候信息，并使用 SCSS、TypeScript 修改其样式和文本。

<!--more-->

## 准备工作

- 一个用于模块测试的 HB 站点，如果还没有，可以使用[入门主题](https://github.com/hbstack/theme)。
- 熟悉雨果开发。
- 已安装好[构建工具]({{< relref "docs/getting-started/prerequisites#build-tools" >}})。

## 初始化模块

首先，创建并初始化一个模块。

{{% code-snippet init-module %}}

请将模块路径  `example.com/vendor/hello` 替换成你的，比如 `github.com/hbstack/hello`，其中 `vendor` 为组织名称或你的用户名。

{{< bs/alert >}}
{{% markdownify %}}
本指南始终使用 `example.com/vendor/hello` 作为模块路径。
{{% /markdownify %}}
{{< /bs/alert >}}

## 设置 HB 站点

推荐于 HB 站点导入本地模块，以方便开发和调试。

### 导入本地模块

首先，我们需要导入本地模块到 HB 站点。

{{< bs/config-toggle filename=hugo >}}
[[module.imports]]
path = "example.com/vendor/hello"
{{< /bs/config-toggle >}}

然后于 `go.mod` 中将其映射到本地路径。

{{% code-snippet replace-go-mod %}}

其中 `/path/to/hello` 为模块的路径，相对路径和绝对路径都是有效的。

### 启动测试站点

{{% code-snippet hugo-server %}}

## 模块配置文件

回到模块，创建以下模块配置文件。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}

其声明了 `github.com/hbstack/hb` 模块是必须的。

现在是时候开始实现功能了。

{{< bs/alert warning >}}
{{% markdownify %}}
`hb-vendor-hello` 将作为 HugoPress 的模块名称，我们推荐以相同模式 `hb-vendor-name` 命名你的模块，以避免和 HugoPress 模块以及 HB 内置模块相冲突。
{{% /markdownify %}}
{{< /bs/alert >}}

## 于 `<html>` 和 `<body>` 上追加属性

追加以下配置以添加额外的 HTML 属性。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet attributes.toml %}}
{{< /bs/config-toggle >}}

其中 `cacheable` 表明属性是否可缓存，若属性值包含动态内容，则禁用。

然后通过模板定义额外的属性。

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/attributes/document.html" primary true %}}
{{% code-snippet attributes-document %}}
{{% /bs/collapse %}}

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/attributes/body.html" primary true %}}
{{% code-snippet attributes-body %}}
{{% /bs/collapse %}}

若无意外，HTML 源代码如下所示：

{{% code-snippet attributes-output %}}

## 使用钩子

本例子只使用了若干个钩子，所有可用的钩子可从文档和 [HugoPress's 内置钩子](https://hugomods.com/en/docs/hugopress/#hooks)中找到。

> 请注意，钩子模板的上下文不同于常规模板，详情请参阅 [hooks context](https://hugomods.com/en/docs/hugopress/#hooks-context)。

### 于 `<head>` 上生成内容

有两个内置的钩子可用于在 `<head>` 内放置自定义内容：`head-begin` 和 `head-end`，通常用于生成元标记、导入样式等。

追加以下配置以启用。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet hooks-head.toml %}}
{{< /bs/config-toggle >}}

> 同属性，若模板包含动态内容，则禁用 `cacheable`。

然后创建对应的模板：

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/hooks/head-begin.html" primary true %}}
{{% code-snippet hook-head-begin %}}
{{% /bs/collapse %}}

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/hooks/head-end.html" primary true %}}
{{% code-snippet hook-head-end %}}
{{% /bs/collapse %}}

现在页面将包含以下元标记。

{{% code-snippet hook-head-output %}}

### 显示问候语

最后，于页面顶部显示一则问候语。

配置如下：

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet hook-body-begin.toml %}}
{{< /bs/config-toggle >}}

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/hooks/body-begin.html" primary true %}}
{{% code-snippet body-begin %}}
{{% /bs/collapse %}}

如无意外，该问候语将显示与页面顶部。

## 添加样式

你也许希望添加样式以美化页面，以问候语为例，我们修改其背景色和颜色。

为了实现模块的灵活性，我们定义了以下参数。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet style-config.toml %}}
{{< /bs/config-toggle >}}

接着创建以下 SCSS 文件。

{{% bs/collapse "assets/hb/modules/vendor-hello/scss/variables.tmpl.scss" primary true %}}
```scss
{{% code-snippet variables.scss %}}
```
{{% /bs/collapse %}}

{{% bs/collapse "assets/hb/modules/vendor-hello/scss/index.scss" primary true %}}
```scss
{{% code-snippet style.scss %}}
```
{{% /bs/collapse %}}

重启 Hugo 服务器以确保完全加载 SCSS 文件。

## 添加脚本

最后，让我们利用 JS 修改问候语。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet js-config.toml %}}
{{< /bs/config-toggle >}}

{{% bs/collapse "assets/hb/modules/vendor-hello/js/index.ts" primary true %}}
```ts
{{% code-snippet index.ts %}}
```
{{% /bs/collapse %}}

## 于生产模式下测试

脚本使用到的样式会被 PurgeCSS 移除，详情请参阅 [PurgeCSS]({{< relref "develop/purgecss" >}})。

PurgeCSS 只有在生产模式下生效，我们可以通过以下命令于生产模式预览模块。

```sh
hugo server -e production --minify --gc --renderToDisk -b http://localhost:1313 -p 1313
```

## 发布

当模块完成后，是时候通过推送到远程仓库以发布模块了，然后将映射关系从 `go.mod` 中移除。
