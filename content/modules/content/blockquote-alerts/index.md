---
title: "Blockquote Alerts Module"
linkTitle: "Blockquote Alerts"
description: "Module to generate alerts via blockquote, which is much simpler than using shortcodes."
date: 2024-09-05T10:34:31+08:00
draft: false
nav_icon:
  vendor: bs
  name: info-circle
series:
  - Modules
categories:
  - Markdown
tags:
  - Blockquote
  - Alerts
images:
authors:
  - HB
---

{{% hb-module "blockquote-alerts" %}}

## Alerts Syntax

{{< page-resource-content "data/syntax" >}}

> [!IMPORTANT]
> The `TYPE` is required.

> [!NOTE]+
> The `SIGN` is optional, which is used to indicate whether the alert is foldable, the `+` sign expands the alert by default.

> [!QUESTION]+ Is the TITLE required?
> The `TITLE` is required when using the `QUESTION` type, it also can be used to customize title.

## Alerts Examples

{{< page-resource-content "data/examples" >}}
