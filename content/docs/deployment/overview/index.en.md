---
title: "Deployment Overview"
linkTitle: "Overview"
date: 2023-04-14T17:47:25+08:00
draft: false
nav_weight: 1
series:
  - Docs
categories:
  - Deployment
tags:
images:
authors:
  - HB
---

This article introduces the key points of deployments.

<!--more-->

## Deployment Steps

1. Install [build tools]({{< relref "docs/getting-started/prerequisites#build-tools" >}}).
2. Specify the `baseURL` for production site, it's very **IMPORTANT**, some search engines require absolute sitemap URLs.
3. Build Hugo site, such as `hugo --gc --minify`.
4. Deploy site, this step depends on what platform used.
