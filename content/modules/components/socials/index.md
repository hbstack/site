---
type: docs
aliases:
  - /en/docs/modules/socials/
title: "Socials Module"
linkTitle: Socials
date: 2023-02-17T00:20:03+08:00
draft: false
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

The socials module is a helper to generate social links.

<!--more-->

{{% hb-module socials %}}

This module cannot be used independently, and you do not need to explicitly import this module, since it will be imported by related modules automatically, such as [header's socials]({{< ref "modules/header/socials" >}}) and [footer's socials]({{< ref "modules/footer/socials" >}}).

## Identifiers

The identifier can be either an absolute URL or an username.

> The email URL is also valid, i.e. `mailto:user@example.com`.

## Socials Media

| Media            | Description                       |
| ---------------- | --------------------------------- |
| `artstation`     |                                   |
| `bilibili`       |                                   |
| `bitbucket`      |                                   |
| `discord`        |                                   |
| `discourse`      |                                   |
| `dockerhub`      |                                   |
| `email`          | Email address.                    |
| `facebook`       |                                   |
| `facebookgroup`  |                                   |
| `github`         |                                   |
| `gitlab`         |                                   |
| `gmail`          |                                   |
| `instagram`      |                                   |
| `itchdotio`      |                                   |
| `kaggle`         |                                   |
| `kofi`           |                                   |
| `lastfm`         |                                   |
| `liberapay`      |                                   |
| `linkedin`       |                                   |
| `mastodon`       |                                   |
| `medium`         |                                   |
| `opencollective` |                                   |
| `patreon`        |                                   |
| `paypal`         |                                   |
| `pinterest`      |                                   |
| `quora`          |                                   |
| `reddit`         |                                   |
| `rss`            | The RSS feeds, `true` or `false`. |
| `stackoverflow`  |                                   |
| `tel`            | Telephone number.                 |
| `telegram`       |                                   |
| `tencetqq`       |                                   |
| `threads`        |                                   |
| `tiktok`         |                                   |
| `tumblr`         |                                   |
| `twitter`        |                                   |
| `weibo`          |                                   |
| `xing`           |                                   |
| `youtube`        |                                   |
| `zhihu`          |                                   |
