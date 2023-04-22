---
title: "Deploy on Netlify"
linkTitle: "Netlify"
date: 2023-04-15T10:09:40+08:00
draft: false
series:
  - Docs
categories:
  - Deployment
tags:
  - Netlify
images:
authors:
  - HB
---

This article contains step-by-step instructions on how to deploy sites on Netlify.

<!--more-->

There are multiple ways to deploy sites on Netlify, this article introduces the approach of using file-based configuration, which is more flexible than dashboard settings.

## Deploy Sites via File-based Configuration

### Create Netlify Configuration File

Firstly, create the following configuration file, and commit it to your repo.

{{% bs/collapse netlify.toml primary true %}}
```toml
{{% code-snippet netlify.toml %}}
```
{{% /bs/collapse %}}

### Create a Site

1. Login to [Netlify](https://www.netlify.com/) dashboard.
2. Click the _Add new site_, and select the `Import an existing project` option.
3. Select the repository.
4. Leave the form as it is, since we've configured via `netlify.toml`.
5. _Deploy site_.

{{< bs/alert warning >}}
After modifying the custom domain name, you need to redeploy the site.
{{< /bs/alert >}}
