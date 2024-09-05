+++
title = "Markdown 语法指南"
linkTitle = "Markdown"
date = "2020-11-09"
featured = true
pinned = true
categories = [
]
tags = [
  "Markdown",
  "CSS",
  "HTML",
]
series = [
  "文档"
]
nav_weight = 3
authors = [
  "hb",
  "hugo"
]
[nav_icon]
vendor = "bs"
name = "markdown"
+++

本文将提供一些能用于 Hugo 内容文件的 Markdown 的基础语法示例。

<!--more-->

## 标题

下面的 HTML `<h1>`—`<h6>` 元素代表了六个级别的章节标题，其中 `<h1>` 和 `<h2>` 分别是最高和最低的。

# H1

## H2

### H3

#### H4

##### H5

###### H6

## 段落

Xerum, quo qui aut unt expliquam qui dolut labo. Aque venitatiusda cum, voluptionse latur sitiae dolessi aut parist aut dollo enim qui voluptate ma dolestendit peritin re plis aut quas inctum laceat est volestemque commosa as cus endigna tectur, offic to cor sequas etum rerum idem sintibus eiur? Quianimin porecus evelectur, cum que nis nust voloribus ratem aut omnimi, sitatur? Quiatem. Nam, omnis sum am facea corem alique molestrunt et eos evelece arcillit ut aut eos eos nus, sin conecerem erum fuga. Ri oditatquam, ad quibus unda veliamenimin cusam et facea ipsamus es exerum sitate dolores editium rerore eost, temped molorro ratiae volorro te reribus dolorer sperchicium faceata tiustia prat.

Itatur? Quiatae cullecum rem ent aut odis in re eossequodi nonsequ idebis ne sapicia is sinveli squiatum, core et que aut hariosam ex eat.

## 引用

The blockquote element represents content that is quoted from another source, optionally with a citation which must be within a `footer` or `cite` element, and optionally with in-line changes such as annotations and abbreviations.

### 引用参数

{{< page-resource-content "data/blockquotes-params" >}}

### 不带出处的引用

{{< page-resource-content "data/blockquotes-example" >}}

### 带有出处的引用

{{< page-resource-content "data/blockquotes-example-attribution" >}}

### 引用对齐

{{< page-resource-content "data/blockquotes-example-alignments" >}}

## 表格

Tables aren't part of the core Markdown spec, but Hugo supports supports them out-of-the-box.

| Name  | Age |
| ----- | --- |
| Bob   | 27  |
| Alice | 23  |

### Inline Markdown within tables

| Italics   | Bold     | Code   |
| --------- | -------- | ------ |
| _italics_ | **bold** | `code` |

### 高级表格用法

另请参阅[表格]({{< relref "docs/content/tables" >}})。

## 代码块

### Code block with backticks

```html {title="public/index.html"}
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Example HTML5 Document</title>
  </head>
  <body>
    <p>Test</p>
  </body>
</html>
```

### Code block with Hugo's internal highlight shortcode

{{< highlight html >}}

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Another Example HTML5 Document</title>
</head>
<body>
  <p>A looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong text</p>
</body>
</html>
{{< /highlight >}}

## 列表类型

### 有序列表

1. First item
2. Second item
3. Third item

### 无序列表

- List item
- Another item
- And another item

### 嵌套列表

- Fruit
  - Apple
  - Orange
  - Banana
- Dairy
  - Milk
  - Cheese

### 待办事项

- [x] Done
- [ ] WIP
- [ ] TODO

## 图片

```markdown
![text](url)
```

{{% bs/clearfix %}}
![Float start](featured.jpeg?width=200px#float-start) 初始主题集成了 [images](https://hugomods.com/en/docs/images) 模块，其允许通过 URL 查询字符串和段来处理图片，比如调整图片大小、裁剪图片和使图片对齐等。

阅读更多关于 [images 使用方式](https://hugomods.com/en/docs/images#aligning-images)，以 Markdown 的方式处理图片。
{{% /bs/clearfix %}}

## 其他元素 — abbr, sub, sup, kbd, mark

<abbr title="Graphics Interchange Format">GIF</abbr> is a bitmap image format.

H<sub>2</sub>O

X<sup>n</sup> + Y<sup>n</sup> = Z<sup>n</sup>

Press <kbd><kbd>CTRL</kbd>+<kbd>ALT</kbd>+<kbd>Delete</kbd></kbd> to end the session.

Most <mark>salamanders</mark> are nocturnal, and hunt for insects, worms, and other small creatures.
