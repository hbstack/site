+++
author = "Hugo Authors"
title = "Markdown Syntax Guide"
linkTitle = "Markdown"
date = "2020-11-09"
featured = true
pinned = true
description = "Sample article showcasing basic Markdown syntax and formatting for HTML elements."
categories = [
]
tags = [
  "Markdown",
  "CSS",
  "HTML",
]
series = [
  "Docs"
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

This article offers a sample of basic Markdown syntax that can be used in Hugo content files, also it shows whether basic HTML elements are decorated with CSS in a Hugo theme.
<!--more-->

## Headings

The following HTML `<h1>`—`<h6>` elements represent six levels of section headings. `<h1>` is the highest section level while `<h6>` is the lowest.

# H1
## H2
### H3
#### H4
##### H5
###### H6

## Paragraph

Xerum, quo qui aut unt expliquam qui dolut labo. Aque venitatiusda cum, voluptionse latur sitiae dolessi aut parist aut dollo enim qui voluptate ma dolestendit peritin re plis aut quas inctum laceat est volestemque commosa as cus endigna tectur, offic to cor sequas etum rerum idem sintibus eiur? Quianimin porecus evelectur, cum que nis nust voloribus ratem aut omnimi, sitatur? Quiatem. Nam, omnis sum am facea corem alique molestrunt et eos evelece arcillit ut aut eos eos nus, sin conecerem erum fuga. Ri oditatquam, ad quibus unda veliamenimin cusam et facea ipsamus es exerum sitate dolores editium rerore eost, temped molorro ratiae volorro te reribus dolorer sperchicium faceata tiustia prat.

Itatur? Quiatae cullecum rem ent aut odis in re eossequodi nonsequ idebis ne sapicia is sinveli squiatum, core et que aut hariosam ex eat.

## Blockquotes

The blockquote element represents content that is quoted from another source, optionally with a citation which must be within a `footer` or `cite` element, and optionally with in-line changes such as annotations and abbreviations.

### Blockquotes Parameters

{{< page-resource-content "data/blockquotes-params" >}}

### Blockquote without attribution

{{< page-resource-content "data/blockquotes-example" >}}

### Blockquote with attribution

{{< page-resource-content "data/blockquotes-example-attribution" >}}

### Blockquote alignments

{{< page-resource-content "data/blockquotes-example-alignments" >}}

## Tables

Tables aren't part of the core Markdown spec, but Hugo supports supports them out-of-the-box.

   Name | Age
--------|------
    Bob | 27
  Alice | 23

### Inline Markdown within tables

| Italics   | Bold     | Code   |
| --------  | -------- | ------ |
| *italics* | **bold** | `code` |

### Advanced Table Usage

See [Tables]({{< relref "docs/content/tables" >}}) for details.

## Code Blocks

### Code block with backticks

```html {title="public/index.html"}
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
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

## List Types

### Ordered List

1. First item
2. Second item
3. Third item

### Unordered List

* List item
* Another item
* And another item

### Nested List

* Fruit
  * Apple
  * Orange
  * Banana
* Dairy
  * Milk
  * Cheese

### TODO List

- [x] Done
- [ ] WIP
- [ ] TODO

## Images

```markdown
![text](url)
```

{{% bs/clearfix %}}
![Float start](featured.jpeg?width=200px#float-start) The starter theme integrated with the [images](https://hugomods.com/en/docs/images) module, which allow processing images via URL query string and fragment, such as resize, crop, fit, fill and align images.

Read more on [images usage](https://hugomods.com/en/docs/images#aligning-images), start processing images in Markdown way.
{{% /bs/clearfix %}}

## Other Elements — abbr, sub, sup, kbd, mark

<abbr title="Graphics Interchange Format">GIF</abbr> is a bitmap image format.

H<sub>2</sub>O

X<sup>n</sup> + Y<sup>n</sup> = Z<sup>n</sup>

Press <kbd><kbd>CTRL</kbd>+<kbd>ALT</kbd>+<kbd>Delete</kbd></kbd> to end the session.

Most <mark>salamanders</mark> are nocturnal, and hunt for insects, worms, and other small creatures.
