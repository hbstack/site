---
type: docs
title: "Announcement Bar"
linkTitle: "Announcement Bar"
date: 2023-06-11T18:36:36+08:00
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - Modules
categories:
tags:
images:
authors:
  - HB
---

The announcement bar module makes important thing stand out, such as news and project's releases.

<!--more-->

{{% hb-module announcement-bar %}}

## Site Parameters

| Parameter      |  Type  | Default | Description                                             |
| -------------- | :----: | :-----: | ------------------------------------------------------- |
| `bg`           | string | primary | The background color.                                   |
| ~~`color`~~    | string | `#fff`  | The text color.                                         |
| ~~`interval`~~ | number | `5000`  | The interval (in millisecond) between of announcements. |

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

## Announcements Data Files

This module is designed to work on both of monolingual and multilingual sites, you'll need to create announcements data file per language under the `data/announcements` folder.

{{% code-snippet structure %}}

As the output of `tree` shown, we defined announcements for `en`, `zh-hans` and `zh-hant` sites.

### Announcement Properties

| Property |  Type  | Default | Required | Description                                         |
| -------- | :----: | :-----: | :------: | --------------------------------------------------- |
| `title`  | string |    -    |    Y     | The title of announcement, support Markdown syntax. |
| `weight` | number |    -    |    N     | Lower get higher priority.                          |

### Announcement Example

{{% bs/config-toggle "data/announcements/en" %}}
{{% code-snippet example.toml %}}
{{% /bs/config-toggle %}}
