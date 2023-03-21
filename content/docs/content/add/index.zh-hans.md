---
title: "创建内容"
date: 2023-03-07T00:50:54+08:00
draft: false
nav_weight: 1
series:
  - 文档
categories:
  - 内容
tags:
  - Front Matter
  - YAML
  - TOML
  - JSON
images:
authors:
  - RazonYang
---

内容是站点最基本，也是最核心的部分，本文将介绍内容的一些基本概念，以及如何创建内容。

<!--more-->

## 创建内容

通过 `hugo new` 命令创建内容。

```sh
hugo new blog/hello/index.md
```

该命令将于 `content` 目录下创建一个 `blog/hello/index.md` 的内容页面，其初始内容如下：

```markdown
---
title: "Hello"
date: 2023-03-08T11:02:23+08:00
draft: true
---
```

Hugo 提供了[内容原型]({{< ref "docs/content/archetypes" >}})以更好地定制初始化内容。

{{< bootstrap/alert >}}
{{< markdownify >}}
一般地，新创建的内容处于草稿阶段（`draft: true`），在发布之前，可以通过指定 `hugo server` 的 `--buildDrafts` 或 `-D` 参数进行预览。当内容准备就绪，则需要将 `draft` 改为 `false` 或者删除 `draft` 以发布该内容。
{{< /markdownify >}}
{{< /bootstrap/alert >}}

## 内容组成

每个内容页面由前言和主体构成。

```markdown
FRONT MATTER

CONTENT BODY
```

### 内容前言

也就是 Front Matter，用于定义内容的参数，如标题、日期等。

#### 内容前言格式

Hugo 支持三种前言格式：`YAML`、`TOML` 和 `JSON`。

##### YAML 前言

YAML 前言由 `---` 包裹起来。

```markdown
---
title: "Hello"
---
```

##### TOML 前言

TOML 前言由 `+++` 包裹起来。

```markdown
+++
title = "Hello"
+++
```

##### JSON 前言

JSON 前言由 `{` 和 `}` 包裹起来，后跟一个新行。

```markdown
{
  "title": "Hello"
}
```

### 内容主体

也就是字面上的内容本身，支持 Markdown 和短代码编写内容，详情请参阅：

- [Markdown 语法指南]({{< ref "docs/content/markdown-syntax" >}})
- [短代码]({{< ref "docs/shortcodes" >}})
