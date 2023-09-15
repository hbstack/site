---
title: "Prerequisites"
description: |
  HB is a feature-rich framework, but it also has a certain complexity. This article will detail the requirements for HB so that you can develop and use HB modules and themes properly.
date: 2022-12-19T14:53:42+08:00
draft: false
tags:
  - NPM
  - Go
  - Hugo
  - Git
  - Node.js
  - PurgeCSS
  - RTLCSS
  - Autoprefixer
  - PostCSS
categories:
  - Build Tools
  - Configuration
series:
  - Docs
authors:
  - HB
nav_weight: 2
menu:
  footer:
    parent: docs
    weight: 32
    params:
      icon:
        vendor: bs
        name: card-checklist
---

## Required Configurations

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

{{% bs/collapse build.writeStats primary true %}}
Used to collect used CSS, such as classes, ids and tags, which will be used to purging unused CSS.
{{% /bs/collapse %}}

## Build Tools

It's recommended using the latest version of those tools as possible.

### Go

HB is a modular framework, requires [Go installation](https://go.dev/dl/) to download and upgrade [Hugo Modules](https://gohugo.io/hugo-modules/use-modules/#prerequisite).

{{% bs/collapse "Install Go on Arch Linux" %}}
{{< code-snippet install-go-on-arch-linux >}}
{{% /bs/collapse %}}

### Hugo

![Version](https://img.shields.io/badge/dynamic/json?color=blue&label=requirements&query=requirements&url=https://api.razonyang.com/v1/hugo/modules/github.com/hbstack/hb&style=flat-square)

HB uses Hugo Pipes to compile SCSS, so an **extended** version of [Hugo](https://gohugo.io/installation/) is required.

{{% bs/collapse "Install Hugo via Go" %}}
If you're located in China mainland without VPN, you'll need to set up the [Go proxy](https://hugomods.com/en/blog/2023/04/go-and-hugo-proxy-servers/) first.
{{< code-snippet install-hugo-via-go >}}
{{% /bs/collapse %}}

### Git

The version control system, can be fetched on the [downloads](https://git-scm.com/downloads) page.

{{% bs/collapse "Install Git on Arch Linux" %}}
{{< code-snippet install-git-on-arch-linux >}}
{{% /bs/collapse %}}

### Node.js

> Requires Node.js `16` or later.

HB requires the following [Node.js](https://nodejs.org/) packages.

{{% bs/collapse "Install Node.js on Arch Linux" %}}
{{< code-snippet install-node-js-on-arch-linux >}}
{{% /bs/collapse %}}

| Name         | Description                                                   |
| ------------ | ------------------------------------------------------------- |
| PostCSS CLI  | Transform styles.                                             |
| RTLCSS       | Convert LTR CSS to RTL, optional if you don’t have RTL sites. |
| Autoprefixer | Parse CSS and add vendor prefixes to rules by Can I Use.      |
| PurgeCSS     | Remove unused CSS.                                            |

NPM has been included in the Node.js installation, you can either install those packages locally or globally.

{{% bs/collapse "Install Locally" primary true %}}
{{< code-snippet npm-i >}}
This approach writes dependencies to `package.json`, so that those packages can be installed via `npm i` without having to remember the complicated package names.
{{% /bs/collapse %}}

{{% bs/collapse "Install Globally" success true %}}
{{< code-snippet npm-i-g >}}
This command needs to be executed only once and does not need to be executed again for subsequent HB sites.
{{% /bs/collapse %}}

Both are valid, HB will try to look up the packages locally first.

## Notes

### Required Parameters for Hugo Server Production Mode

If you need to use Hugo Server in production mode, you need to specify `--disableFastRender` and `--renderToDisk`, otherwise PurgeCSS and PostCSS will have unexpected problems.

{{% code-snippet hugo-server-production %}}

### Please Do Not Changing `hb` and `hugopress` Parameters via Language-Scoped Configurations

HB relies on deep merging of configurations between modules, however language-scoped parameters will override the configuration of overriding modules rather than deep merging, which will lead to all sorts of unexpected problems. For example, the following configuration example is **not allowed**.

{{< bs/config-toggle filename=hugo >}}
{{< code-snippet invalid-multilingual-config.yaml >}}
{{< /bs/config-toggle >}}

### Please Disable Cloudflare Rocket Loader

Cloudflare Rocket Loader missing the `DOMContentLoaded` event, will cause many modules to fail, even if we provide a [patch](https://github.com/hbstack/cloudflare-rocket-loader) for this, but the loss outweighs the gain, disable the feature is the best choice for now.
