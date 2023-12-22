---
type: docs
title: "公告栏"
linkTitle: "公告栏"
date: 2023-06-11T18:36:36+08:00
nav_weight: 1000
nav_icon:
  vendor: bs
  name: bell
series:
  - 模块
categories:
tags:
  - 公告栏
images:
authors:
  - HB
---

公告栏模块突出一些重要的事情，比如新闻和项目的新版本。

<!--more-->

{{% hb-module announcement-bar %}}

## 站点参数

| Parameter   |  Type  | Default | Description              |
| ----------- | :----: | :-----: | ------------------------ |
| ~~`bg`~~    | string | primary | 背景颜色。               |
| ~~`color`~~ | string | `#fff`  | 文本颜色。               |
| `interval`  | number | `5000`  | 公告的间隔，单位：毫秒。 |
| `expand_stall_threshold` | number | `1000` | 鼠标悬停于公告栏时展开所有公告所需要经过的毫秒数。 |

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

## 公告数据文件

该模块被设计为兼容单语言和多语言站点，你需要于 `data/announcements` 目录下为每个语言站点创建公告数据文件。

{{% code-snippet structure %}}

如 `tree` 的结果所示，我们为 `en`、`zh-hans` 和 `zh-hant` 站点定义了公告数据文件。

### 公告属性

| Property |  Type  | Default | Required | Description                    |
| -------- | :----: | :-----: | :------: | ------------------------------ |
| `title`  | string |    -    |    Y     | 公告标题，支持 Markdown 语法。    |
| `url`    | string |    -    |    N     | 公告 URL。                      |
| `weight` | number |    -    |    N     | 值越小优先级越高。                |

{{< bs/alert warning >}}
{{% markdownify %}}
当设置了 `url`，请确保 `title` 不包含无效内容，比如链接。
{{% /markdownify %}}
{{< /bs/alert >}}

### 公告例子

{{% bs/config-toggle "data/announcements/en" %}}
{{% code-snippet example.toml %}}
{{% /bs/config-toggle %}}
