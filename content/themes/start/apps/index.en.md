---
title: "Applications"
type: docs
nav_weight: 4
nav_icon:
  vendor: bs
  name: globe
description: Manage the applications.
date: 2023-09-15T22:42:11+08:00
draft: false
series:
  - Themes
tags:
  - Start Page
  - Applications
---

Currently, the applications are specified through the menus configuration.

{{< bs/config-toggle "menus" >}}
apps:
  - name: Group 1
    identifier: group-1
  - name: Foo
    parent: group-1
    url: https://example.org/foo

  - name: Group 2
    identifier: group-2
  - name: Bar
    parent: group-2
    url: https://example.org/bar
{{< /bs/config-toggle >}}
