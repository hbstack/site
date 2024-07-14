---
type: docs
aliases:
  - /zh-hans/docs/modules/docs/hooks/
title: "文档钩子"
linkTitle: "钩子"
date: 2023-04-15T02:44:01+08:00
draft: false
nav_icon:
  vendor: bs
  name: gear
series:
  - 文档
categories:
  - 模块
tags:
  - 钩子
images:
authors:
  - HB
---

本文列出文档模块的自定义钩子。

<!--more-->

| Name                         | Description              |
| ---------------------------- | ------------------------ |
| `hb-docs-main-begin`         | 于文档主体前。           |
| `hb-docs-main-end`           | 于文档主体后。           |
| `hb-docs-doc-toc-begin`      | 于 ToC 前。              |
| `hb-docs-doc-toc-end`        | 于 ToC 后。              |
| `hb-docs-doc-content-begin`  | 于内容前。               |
| `hb-docs-doc-content-end`    | 于内容后。               |
| `hb-docs-doc-comments-begin` | 于评论前。               |
| `hb-docs-doc-comments`       | 评论，用于实现评论引擎。 |
| `hb-docs-doc-comments-end`   | 于评论后。               |
| `hb-docs-nav-afterbegin`     | 文档导航的开始部分，不管其缓存配置如何，总是按照每第一个栏目进行缓存。 |
| `hb-docs-nav-beforeend`      | 文档导航的结束部分，不管其缓存配置如何，总是按照每第一个栏目进行缓存。 |
