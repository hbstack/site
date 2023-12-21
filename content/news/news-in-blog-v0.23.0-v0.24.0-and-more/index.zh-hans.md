---
title: "博客 v0.23.0、v0.24.0 及相关模块中的最新消息"
description: "博客的 v0.23.0、v0.24.0 版本及相关模块中的最新改动和特性。"
date: 2023-12-21T13:42:58+08:00
draft: false
series:
  - 新闻
categories:
  - 模块
tags:
  - 博客
  - 侧边栏
  - 分类
  - 文章
images:
authors:
  - HB
---

## 博客模块

随着[博客模块]({{< relref "modules/blog" >}}) `v0.23.0` 和 `v0.24.0` 的发布，博客布局变得更加灵活，现在你可以：

1. 改变布局：一列（无侧边栏）、两列或三列。
1. 更改边栏位置：左侧或右侧。
1. 调整侧边栏宽度。
1. 是否粘贴侧边栏。
1. 更改 ToC （目录）位置：内容左侧、内容右侧或内容上方。
1. 将相应参数设置为 `0`，删除主页上的幻灯片。
1. 自定义 `md`、`lg` 断点的每行文章数。
1. 新增钩子：`hb-blog-post-content-afterbegin` 和 `hb-blog-post-content-beforeend`。

### 博客侧边栏文章模块

[博客侧边栏文章模块]({{< relref "modules/blog/sidebar/posts" >}})的 `v0.7.0` 引入了一种名为 `vertical` 的新列表样式。

![博客侧边栏文章模块的垂直列表样式](/images/docs/modules/blog/sidebar/posts/vertical.png#center)

### 博客边栏分类模块

[博客侧边栏分类法模块]({{< relref "modules/blog/sidebar/taxonomies" >}})的 `v0.4.0` 版本允许将分类分离开来。

![博客侧边栏分类法模块的分离示例](/images/docs/modules/blog/sidebar/taxonomies/separated.png#center)
