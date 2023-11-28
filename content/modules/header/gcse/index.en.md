---
type: docs
title: "Header Google Custom Search Engine Module"
linkTitle: "GCSE"
description: Add Google custom search engine on the header.
date: 2023-10-12T20:11:15+08:00
draft: false
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - Modules
categories:
  - Header
tags:
  - Google
  - Search
  - GCSE
images:
authors:
  - HB
---

{{% hb-module "header/modules/gcse" %}}

## Site Parameters

{{< bs/config-toggle hugo >}}
{{< file-content "data/config.yaml" >}}
{{< /bs/config-toggle >}}

{{% parameters params.yaml %}}

## GCSE Modes

There are three modes to display the Google custom search engine.

### Offcanvas

As the featured image shown, the search page will be displayed in the offcanvas on the right.
To enable this, you'll need to specify the `layout` parameter as `offcanvas`.

### Single Page

If the layout is not set, the module will look for the single search page, and this module ships with two layouts for generating GCSE pages:

- `gcse`: embed GCSE into your site with current layouts and styles.
- `gcse-standalone`: standalone page without site's layouts and styles.

To create the GCSE page, you'll need to specify the `layout` as one of `gcse` and `gcse-standalone` on front matter, take `content/search/_index.md` for example.

```markdown
---
title: Search
layout: gcse
---
```

### Google Hosted

This mode opens a new tab navigate to the Google hosted page when clicking the search button.

## Futher Reading

- [Replace meta modules]({{< relref "blog/replace-meta-modules" >}}): replacing the built-in client-side search module.
