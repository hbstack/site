---
type: docs
title: "HB Breadcrumb Component"
linkTitle: "Breadcrumb"
description: HB breadcrumb component for indicating the current page’s location.
date: 2023-12-09T14:23:27+08:00
draft: false
nav_weight: 1000
series:
  - Modules
categories:
  - Components
tags:
  - Breadcrumb
images:
authors:
  - HB
---

{{% hb-module "breadcrumb" %}}

## Partial

To use it, you'll need to include the partial in particular position of templates.

```go-html-template
{{ partial "hb/modules/breadcrumb/index" . }}
```

> The partial accepts page as the context.

## Page Parameters

### `nav_icon`

![Breadcrumb icons](icons.png#center)

The `nav_icon` is used to display an icon on breadcrumb item.

{{< bs/config-toggle title="Front Matter" delimiter=true >}}
nav_icon:
  vendor: bs
  name: book
{{< /bs/config-toggle >}}

Learn more icons usage on [icons configuration]({{< relref "docs/configuration/icons" >}}).
