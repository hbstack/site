---
type: docs
title: "博客侧边栏概览"
linkTitle: "概览"
date: 2023-06-19T19:03:29+08:00
nav_weight: 1
# nav_icon:
#   vendor: bs
#   name: book
series:
  - 模块
categories:
  - 侧边栏
tags:
images:
authors:
  - HB
---

博客模块支持一个可选的侧边栏布局。

<!--more-->

## 如何使用？

你需要导入至少一个侧边栏模块，以启用侧边栏布局，比如[文章]({{< relref "modules/blog/sidebar/posts" >}})和[分类]({{< relref "modules/blog/sidebar/taxonomies" >}})模块。

## 如何添加侧边栏组件

你可以添加自定义的侧边栏小挂件，比如：

首先定义以下配置。

{{< bs/config-toggle hugo >}}
{{% code-snippet custom-widget.yaml %}}
{{< /bs/config-toggle >}}

然后创建相关的模板。

{{% bs/collapse "layouts/partials/hugopress/modules/hb-custom/hooks/hb-blog-sidebar.html" primary true %}}
{{% code-snippet custom-widget-html %}}
{{% /bs/collapse %}}

## 修改模块的顺序

你还可以调整侧边栏模块的顺序，举个例子。

{{< bs/config-toggle hugo >}}
{{% code-snippet order.yaml %}}
{{< /bs/config-toggle >}}
