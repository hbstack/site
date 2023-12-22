---
type: docs
title: "博客社交分享按鈕模塊"
linkTitle: "社交分享按鈕"
description: 於博客文章下方顯示社交分享按鈕。
date: 2023-12-22T06:26:28+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: share
series:
  - 模塊
categories:
  - 博客
tags:
  - 社交分享按鈕
images:
authors:
  - HB
---

{{% hb-module "blog/modules/social-share-buttons" %}}

## 參數

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

詳情請參閱[參數]({{< relref "modules/components/social-share-buttons#參數" >}})。
