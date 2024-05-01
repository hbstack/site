---
type: docs
aliases:
  - /en/docs/modules/socials/
title: "Socials Module"
linkTitle: Socials
description: Module to generate social links.
date: 2023-02-17T00:20:03+08:00
draft: false
nav_icon:
  vendor: bs
  name: share
series:
  - Docs
categories:
  - Modules
tags:
  - Socials
  - Social Links
images:
authors:
  - HB
---

{{% hb-module socials %}}

This module cannot be used independently, and you do not need to explicitly import this module, since it will be imported by related modules automatically, such as [header's socials]({{< ref "modules/header/socials" >}}) and [footer's socials]({{< ref "modules/footer/socials" >}}).

## Identifiers

The identifier can be either an absolute URL or an username.

> The email URL is also valid, i.e. `mailto:user@example.com`.

## Socials Media

{{% socials-media %}}
