---
type: docs
title: "文档社交分享按钮模块"
linkTitle: "社交分享按钮"
description: 于文档正文下方显示社交分享按钮。
date: 2024-02-01T19:26:28+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: share
series:
  - 模块
categories:
  - 文档
tags:
  - 社交分享按钮
images:
authors:
  - HB
---

{{% hb-module "docs/modules/social-share-buttons" %}}

## 参数

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

详情请参阅[参数]({{< relref "modules/components/social-share-buttons#参数" >}})。
