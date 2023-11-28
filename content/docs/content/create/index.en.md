---
title: "Creating Content"
date: 2023-03-07T00:50:54+08:00
draft: false
nav_weight: 1
series:
  - Docs
categories:
tags:
images:
authors:
  - HB
aliases:
  - /en/docs/content/add/
  - /en/docs/content/archetypes/
---

Content is the most basic and core part of a site. This article will introduce some basic concepts of content and how to create it.

<!--more-->

## Content Structure

{{% code-snippet structure %}}

The content structure above has:

- Four **regular pages**: `blog/hello/`, `blog/foo/`, `blog/posts/post-1/` and `blog/posts/post-2/`.
- Two branch bundles (any directory at any hierarchy that contains an `_index.md` file): `blog` and `posts`.
- Three branch content: `hello.md`, `posts/post-1.md` and `posts/post-2.md`.
- One leaf bundle (a directory at any hierarchy that contains an `index.md`): `foo`. The Leaf bundle will be a regular page and the rest of the content will be its page resource, e.g. `foo/bar.md` is a page resource, not a regular page.

For more information, please refer to [Content Organization](https://gohugo.io/content-management/organization/) and [Page Bundles](https://gohugo.io/content-management/page-bundles/).

## Creating Content

Create content with the `hugo new` command.

```sh
hugo new blog/hello/index.md
```

This command will create a `blog/hello/index.md` content page in the `content` directory, with initial content similar to the following:

```markdown
---
title: "Hello"
date: 2023-03-08T11:02:23+08:00
draft: true
---
```

{{< bs/alert >}}
{{< markdownify >}}
Generally, newly created content is in draft stage (`draft: true`) and can be previewed before publishing by specifying the `--buildDrafts` or `-D` parameter of the `hugo server`. When the content is ready, then you need to change `draft` to `false` or remove `draft` to publish the content.
{{< /markdownify >}}
{{< /bs/alert >}}

## Archetypes

Content archetypes is the templates for creating content, you can define some initial parameters and content, for example the following `notes` archetype specifies `type` as `docs` to use the `docs` layout.

{{% bs/collapse "archetypes/notes.md" primary true %}}
{{% code-snippet archetype %}}
{{% /bs/collapse %}}

When created, the initial content will be generated using the corresponding template.

{{% code-snippet archetype-result %}}

Read more on [Archetypes](https://gohugo.io/content-management/archetypes/)。

## Content Composition

Each content page consists of the front matter and the body.

```markdown
FRONT MATTER

CONTENT BODY
```

## Content Front Matter

Used to define the parameters of the content, such as title, date, tags, categories, etc.

### Content Front Matter Format

`YAML`、`TOML` and `JSON` are supported.

#### YAML Front Matter

YAML front matter are wrapped by `---`.

```markdown
---
title: "Hello"
---
```

#### TOML Front Matter

TOML front matter are wrapped by `+++`.

```markdown
+++
title = "Hello"
+++
```

#### JSON Front Matter

JSON front matter are wrapped by `{` and `}`, followed by a new line.

```markdown
{
  "title": "Hello"
}
```

## Content Body

literally the content itself, with support for Markdown and shortcode writing content.

## Learn More

- [Markdown Syntax Guide]({{< ref "docs/content/markdown-syntax" >}})
- [List of Shortcodes]({{< ref "docs/content/shortcodes" >}})
- [Content Summaries](https://gohugo.io/content-management/summaries/)
- [Translate Your Content](https://gohugo.io/content-management/multilingual/#translate-your-content)
