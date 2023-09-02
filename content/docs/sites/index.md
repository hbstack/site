---
title: "Sites Using HB"
linkTitle: "Sites"
date: 2023-09-02T23:39:04+08:00
draft: false
nav_icon:
  vendor: bs
  name: globe
  color: green
series:
  - Docs
categories:
tags:
images:
authors:
  - HB
---

## How to Add My Sites?

Create a data file with following format to describe your site under the [/data/sites/](https://github.com/hbstack/site/blob/main/data/sites/) folder, then create a PR and waiting for reviewing and merging.

{{< bs/alert warning >}}
{{< markdownify >}}
The data file naming convention: use the domain name and replace the dot (`.`) with the dash (`-`), for example, `https://example.org/` should saved as `example-org.toml`.
{{< /markdownify >}}
{{< /bs/alert >}}

```toml
url = "https://example.org/"
title = "Site title"
date = "2023-xx-xx"
# logo = ""
# logo_width = 100
# logo_height = 100
```

| Property | Type | Description |
| -------- | :--: | ----------- |
| `url` | string | Site URL, **required**. |
| `title` | string | Site title, **required**, please take as short as possible, otherwise it'll be truncated. |
| `date` | date | The date you're requesting to add the site, such as `2023-09-01`, **required**. |
| `logo` | string | Site logo, optional. |
| `logo_width` | number | Logo intrinsic width, required when `logo` is set. |
| `logo_height` | number | Logo intrinsic height, required when `logo` is set. |

{{< bs/alert warning >}}
{{< markdownify >}}
The URLs **MUST** begin with HTTPS protocol, otherwise we won't accept your site.
{{< /markdownify >}}
{{< /bs/alert >}}

## Sites Using HB Framework {.text-center}

{{< sites >}}
