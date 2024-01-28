---
title: "Header Breakpoint"
description: |
  The header module introduces a new parameter called breakpoint that used by collapsing and expanding.
date: 2023-09-03T00:52:53+08:00
draft: false
series:
  - News
categories:
  - Modules
tags:
  - Header
  - Breakpoint
images:
authors:
  - HB
aliases:
  - /2023/09/header-breakpoint/
---

## Backgrounds

The header was initially designed to be collapsed when the width is less than `xxl` breakpoint, otherwise expanding.
The problem is that the header collapsed and looks empty under the `lg` and `xl` breakpoint. So we introduce the `breakpoint` parameter, and use the `lg` as default to suit most of the cases.

## Usage

{{< bs/config-toggle hugo >}}
params:
  hb:
    header:
      breakpoint: xl
{{< /bs/config-toggle >}}

Read more on [header's parameters]({{< relref "/modules/header/overview#site-parameters" >}}).
