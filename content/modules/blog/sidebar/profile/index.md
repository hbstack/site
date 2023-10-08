---
type: docs
title: "HB Blog Profile Sidebar Module"
linkTitle: "Profile"
description: Introduce yourself or your company with title, description, location, social media and so on.
date: 2023-10-08T22:02:48+08:00
draft: false
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - Modules
categories:
  - Sidebar
tags:
  - Profile
images:
authors:
  - HB
---

{{% hb-module "blog/modules/sidebar/profile" %}}

## Site Parameters

{{% parameters params.en.toml %}}

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}
