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
  - HB
aliases:
  - /zh-hans/docs/content/add
  - /zh-hans/docs/content/archetypes
---

内容是站点最基本，也是最核心的部分，本文将介绍内容的一些基本概念，以及如何创建内容。

<!--more-->

## 内容结构

{{% code-snippet structure %}}

以上内容结构具有：

- 四篇**常规页面**：`blog/hello/`, `blog/foo/`、`blog/posts/post-1/` 和 `blog/posts/post-2/`。
- 两个 branch bundle (带有 `_index.md` 的目录)：`blog` 和 `posts`。
- 三篇 branch 内容：`hello.md`、`posts/post-1.md` 和 `posts/post-2.md`。
- 一个 leaf bundle （带有 `index.md` 的目录）：`foo`。Leaf bundle 将作为一篇常规页面，其余的内容将作为其页面资源，如 `foo/bar.md` 是一个页面资源，而非单页内容。

详情请查阅 [Content Organization](https://gohugo.io/content-management/organization/) 和 [Page Bundles
](https://gohugo.io/content-management/page-bundles/)。

## 创建内容

通过 `hugo new` 命令创建内容。

```sh
hugo new blog/hello/index.md
```

该命令将于 `content` 目录下创建一个 `blog/hello/index.md` 的内容页面，其初始内容类似如下：

```markdown
---
title: "Hello"
date: 2023-03-08T11:02:23+08:00
draft: true
---
```

{{< bs/alert >}}
{{< markdownify >}}
一般地，新创建的内容处于草稿阶段（`draft: true`），在发布之前，可以通过指定 `hugo server` 的 `--buildDrafts` 或 `-D` 参数进行预览。当内容准备就绪，则需要将 `draft` 改为 `false` 或者删除 `draft` 以发布该内容。
{{< /markdownify >}}
{{< /bs/alert >}}

## 内容原型

内容原型是用于创建内容的模板，可以定义一些初始化的参数和内容，比如以下 `notes` 原型指定 `type` 为 `docs` 以使用 `docs` 布局。

{{< bs/collapse "archetypes/notes.md" primary true >}}
{{% code-snippet archetype %}}
{{< /bs/collapse >}}

当创建时，将会使用对应的模板生成初始内容。

{{% code-snippet archetype-result %}}

详情请查阅[原型](https://gohugo.io/content-management/archetypes/)。

## 内容组成

每个内容页面由前言和主体构成。

```markdown
FRONT MATTER

CONTENT BODY
```

## 内容前言

也就是 Front Matter，用于定义内容的参数，如标题、日期、标签、分类等。

### 内容前言格式

Hugo 支持三种前言格式：`YAML`、`TOML` 和 `JSON`。

#### YAML 前言

YAML 前言由 `---` 包裹起来。

```markdown
---
title: "Hello"
---
```

#### TOML 前言

TOML 前言由 `+++` 包裹起来。

```markdown
+++
title = "Hello"
+++
```

#### JSON 前言

JSON 前言由 `{` 和 `}` 包裹起来，后跟一个新行。

```markdown
{
  "title": "Hello"
}
```

## 内容主体

也就是字面上的内容本身，支持 Markdown 和短代码编写内容。

## 延伸阅读

- [Markdown 语法指南]({{< ref "docs/content/markdown-syntax" >}})
- [短代码列表]({{< ref "docs/content/shortcodes" >}})
- [内容摘要](https://gohugo.io/content-management/summaries/)
- [多语言内容](https://gohugo.io/content-management/multilingual/#translate-your-content)
