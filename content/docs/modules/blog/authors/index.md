---
title: "Blog Authors"
linkTitle: Authors
date: 2023-03-31T15:59:18+08:00
draft: false
nav_weight: 10
series:
  - Docs
categories:
  - Modules
tags:
  - Authors
images:
authors:
  - HB
  - Hugo
---

The blog module supports multiple authors by default.

<!--more-->

## Site Configuration

To enable the multiple authors, please make sure that the `authors` is present under the `taxonomies`.

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

## Note Authors

And then note the authors on content's front matter.

{{< bs/config-toggle >}}
{{% code-snippet authors.yaml %}}
{{< /bs/config-toggle >}}

Now the page was co-authored by `HB` and `Hugo`, and will be shown on the page.

## Authors Parameters

Describe the authors in details.

| Parameter     |  Type  | Description                                                                                |
| ------------- | :----: | ------------------------------------------------------------------------------------------ |
| `title`       | string | Author display name.                                                                       |
| `description` | string | Author description.                                                                        |
| `email_hash`  | string | The md5 hash of email, used by Gravatar, you can use the `images` parameter below instead. |
| `images`      | array  | The first image will be used as the avatar of authors.                                     |
| `socials`     | object | The [social links]({{< ref "docs/modules/socials" >}}).                                    |

## Authors Example

Let's take `HB` as an example.

{{< bs/collapse "content/authors/hb/_index.md" primary true >}}
{{< bs/config-toggle >}}
{{% code-snippet author %}}
{{< /bs/config-toggle >}}
{{< /bs/collapse >}}
