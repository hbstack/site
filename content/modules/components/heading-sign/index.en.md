---
type: docs
title: "HB Heading Sign Module"
linkTitle: "Heading Sign"
description: "This module shows an anchor link next the the heading when users hovering."
date: 2024-01-06T15:33:09+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: paragraph 
series:
  - Modules
categories:
  - Components
tags:
  - Heading
  - Heading Sign
  - Heading Symbol
images:
authors:
  - HB
---

{{% hb-module "heading-sign" %}}

## Parameters

{{< bs/config-toggle filename="params" title="Site Parameters" >}}
hb:
  heading_sign:
    symbol: '§'
{{< /bs/config-toggle >}}

### `symbol`

The anchor symbol, default to `§`.
