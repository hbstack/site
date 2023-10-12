---
type: docs
title: "页头谷歌自定义搜索引擎模块"
linkTitle: "谷歌自定义搜索引擎"
description: 于页头添加谷歌自定义搜索引擎。
date: 2023-10-12T20:11:15+08:00
draft: false
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - 模块
categories:
  - 页头
tags:
  - 谷歌
  - 搜索
  - GCSE
images:
authors:
  - HB
---

{{% hb-module "header/modules/gcse" %}}

## 站点参数

{{< bs/config-toggle hugo >}}
{{< file-content "data/config.yaml" >}}
{{< /bs/config-toggle >}}

{{% parameters params.yaml %}}

## GCSE 模式

共有三种显示谷歌自定义搜索引擎的模式。

### Offcanvas

如封面所示，搜索页面将显示于页面右侧的 Offcanvas 面板上。你需要将 `layout` 参数指定为 `offcanvas` 以启用该模式。

### 单页模式

如果未曾设置 `layout`，那么模块将会寻找单个搜索页面，而该模块提供了两种布局以创建 GCSE 页面：

- `gcse`：将 GCSE 嵌入站点，共用站点的布局和样式。
- `gcse-standalone`：独立于站点的 GCSE 页面。

你需要于页面前言指定 `layout` 为 `gcse` 和 `gcse-standalone` 其一，以 `content/search/_index.md` 为例。

```markdown
---
title: Search
layout: gcse
---
```

### Google 托管

当点击搜索按钮时，该模式打开新标签，并导航至 Google 托管的页面。
