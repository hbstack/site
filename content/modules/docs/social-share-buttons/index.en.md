---
type: docs
title: "Docs Social Share Buttons Module"
linkTitle: "Social Share Buttons"
description: Display social share buttons below the docs content.
date: 2024-02-01T19:26:28+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: share
series:
  - Modules
categories:
  - Docs
tags:
  - Social Share Buttons
images:
authors:
  - HB
---

{{% hb-module "docs/modules/social-share-buttons" %}}

## Parameters

{{< bs/config-toggle filename="params" title="Site Parameters" >}}
hb:
  docs:
    social_share_buttons:
      icons: true
      labels: true
      alignment: start
      media:
        - twitter
        - facebook
{{< /bs/config-toggle >}}

Learn more about the [parameters]({{< relref "modules/components/social-share-buttons#parameters" >}}).
