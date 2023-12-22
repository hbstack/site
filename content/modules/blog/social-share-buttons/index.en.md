---
type: docs
title: "Blog Social Share Buttons Module"
linkTitle: "Social Share Buttons"
description: Display social share buttons below the blog post content.
date: 2023-12-22T06:26:28+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: share
series:
  - Modules
categories:
  - Blog
tags:
  - Social Share Buttons
images:
authors:
  - HB
---

{{% hb-module "blog/modules/social-share-buttons" %}}

## Parameters

{{< bs/config-toggle filename="params" title="Site Parameters" >}}
hb:
  blog:
    social_share_buttons:
      icons: true
      labels: true
      alignment: start
      media:
        - twitter
        - facebook
{{< /bs/config-toggle >}}

Learn more about the [parameters]({{< relref "modules/components/social-share-buttons#parameters" >}}).
