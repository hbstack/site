---
title: "Authors"
date: 2023-03-31T15:59:18+08:00
draft: false
series:
  - Docs
categories:
  - Module
tags:
  - Authors
images:
authors:
  - HB
  - Hugo
---

The blog module supports multiple authors by default.

<!--more-->

## Authors Configuration

To enable the multiple authors, please make sure that the `authors` is present under the `taxonomies`.

{{< bootstrap/config-toggle hugo >}}
taxonomies:
  authors: authors
{{< /bootstrap/config-toggle >}}

## Note Authors

And then note the authors on content's front matter.

{{< bootstrap/config-toggle >}}
authors:
  - HB
  - Hugo
{{< /bootstrap/config-toggle >}}

Now the page was co-authored by `HB` and `Hugo`, and will be shown on the page.

## Describe Authors in Details

You may want to describe the authors in details, let's take `HB` as an example.

1. Create the author page.

```sh
hugo new authors/hb/_index.md
```

2. And then tweak the author page's parameter.

{{< bootstrap/config-toggle >}}
title: HB Framework Authors
description: HB (Hugo Bootstrap) Framework codes and documentations contributors
# email_hash: XXXXX
images:
  - https://avatars.githubusercontent.com/u/127904984?s=200&v=4
socials:
  github: hbstack
{{< /bootstrap/config-toggle >}}

| Parameter | Type | Description |
| --------- | :--: | ----------- |
| `title` | string | Author display name. |
| `description` | string | Author description. |
| `email_hash` | string | The Gravatar email hash (md5), used by avatar, you can use the `images` parameter below instead. |
| `images` | array | The first image will be used as the avatar of authors. |
| `socials` | object | The [social links]({{< ref "docs/modules/socials" >}}). |
