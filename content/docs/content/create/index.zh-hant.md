---
title: "創建內容"
date: 2023-03-07T00:50:54+08:00
draft: false
nav_weight: 1
series:
  - 文檔
categories:
  - 內容
tags:
  - Front Matter
  - YAML
  - TOML
  - JSON
images:
authors:
  - HB
aliases:
  - /zh-hant/docs/content/add
  - /zh-hant/docs/content/archetypes
---

內容是站點最基本，也是最核心的部分，本文將介紹內容的一些基本概念，以及如何創建內容。

<!--more-->

## 內容結構

{{% code-snippet structure %}}

以上內容結構具有：

- 四篇**常規頁面**：`blog/hello/`, `blog/foo/`、`blog/posts/post-1/` 和 `blog/posts/post-2/`。
- 兩個 branch bundle (帶有 `_index.md` 的目錄)：`blog` 和 `posts`。
- 三篇 branch 內容：`hello.md`、`posts/post-1.md` 和 `posts/post-2.md`。
- 一個 leaf bundle （帶有 `index.md` 的目錄）：`foo`。Leaf bundle 將作爲一篇常規頁面，其餘的內容將作爲其頁面資源，如 `foo/bar.md` 是一個頁面資源，而非單頁內容。

詳情請查閱 [Content Organization](https://gohugo.io/content-management/organization/) 和 [Page Bundles
](https://gohugo.io/content-management/page-bundles/)。

## 創建內容

通過 `hugo new` 命令創建內容。

```sh
hugo new blog/hello/index.md
```

該命令將於 `content` 目錄下創建一個 `blog/hello/index.md` 的內容頁面，其初始內容類似如下：

```markdown
---
title: "Hello"
date: 2023-03-08T11:02:23+08:00
draft: true
---
```

{{< bs/alert >}}
{{< markdownify >}}
一般地，新創建的內容處於草稿階段（`draft: true`），在發佈之前，可以通過指定 `hugo server` 的 `--buildDrafts` 或 `-D` 參數進行預覽。當內容準備就緒，則需要將 `draft` 改爲 `false` 或者刪除 `draft` 以發佈該內容。
{{< /markdownify >}}
{{< /bs/alert >}}

## 內容原型

內容原型是用於創建內容的模板，可以定義一些初始化的參數和內容，比如以下 `notes` 原型指定 `type` 爲 `docs` 以使用 `docs` 佈局。

{{% bs/collapse "archetypes/notes.md" primary true %}}
{{% code-snippet archetype %}}
{{% /bs/collapse %}}

當創建時，將會使用對應的模板生成初始內容。

{{% code-snippet archetype-result %}}

詳情請查閱[原型](https://gohugo.io/content-management/archetypes/)。

## 內容組成

每個內容頁面由前言和主體構成。

```markdown
FRONT MATTER

CONTENT BODY
```

## 內容前言

也就是 Front Matter，用於定義內容的參數，如標題、日期、標籤、分類等。

### 內容前言格式

Hugo 支持三種前言格式：`YAML`、`TOML` 和 `JSON`。

#### YAML 前言

YAML 前言由 `---` 包裹起來。

```markdown
---
title: "Hello"
---
```

#### TOML 前言

TOML 前言由 `+++` 包裹起來。

```markdown
+++
title = "Hello"
+++
```

#### JSON 前言

JSON 前言由 `{` 和 `}` 包裹起來，後跟一個新行。

```markdown
{
  "title": "Hello"
}
```

## 內容主體

也就是字面上的內容本身，支持 Markdown 和短代碼編寫內容。

## 延伸閱讀

- [Markdown 語法指南]({{< ref "docs/content/markdown-syntax" >}})
- [短代碼列表]({{< ref "docs/content/shortcodes" >}})
- [內容摘要](https://gohugo.io/content-management/summaries/)
- [多語言內容](https://gohugo.io/content-management/multilingual/#translate-your-content)
