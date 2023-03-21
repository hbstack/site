---
title: "Prerequisites"
date: 2022-12-19T14:53:42+08:00
draft: false
tags:
  - NPM
  - Yarn
  - Go
  - Hugo
  - Git
  - NodeJS
  - PurgeCSS
  - RTLCSS
  - Autoprefixer
categories:
  - Build Tools
  - Configuration
series:
  - Docs
authors:
  - hb
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

Please make sure you meet the prerequisites prior to using or developing the HB and its modules.

## Required Configurations

{{< bootstrap/config-toggle filename=hugo >}}
[build]
  writeStats = true
{{< /bootstrap/config-toggle >}}

- The `build.writeStats` is used to collect used CSS, such as classes, ids and tags, which will be used to purging unused CSS.

## Build Tools

| Name | Version | Description
|:-:|:-:|---
| [Hugo](https://gohugo.io/installation/) | ![Version](https://img.shields.io/badge/dynamic/json?color=blue&label=requirements&query=requirements&url=https://api.razonyang.com/v1/hugo/modules/github.com/hbstack/hb&style=flat-square) | For building site.
| [Go](https://go.dev/dl/) | `>=1.12` | Required by [Hugo modules](https://gohugo.io/hugo-modules/use-modules/#prerequisite) to install modules.
| [Git](https://git-scm.com/downloads) | - | Version Control Systems.
| [NodeJS](https://nodejs.org/) | `>=16` | For building JavaScript.
| [PostCSS CLI](https://github.com/postcss/postcss-cli) | - | For transforming styles.
| [RTLCSS](https://rtlcss.com/) | - | Convert LTR CSS to RTL, optional if you don't have RTL sites.
| [Autoprefixer](https://github.com/postcss/autoprefixer) | - | Parse CSS and add vendor prefixes to rules by Can I Use.
| [PurgeCSS](https://purgecss.com/) | - | Remove unused CSS.

> It's recommended using the latest version of those tools as possible.

HB doesn't require NPM or Yarn, but it's recommended to have one, to install PostCSS CLI, RTLCSS, Autoprefixer and PurgeCSS with one command.

```sh
npm i postcss-cli @fullhuman/postcss-purgecss autoprefixer rtlcss
```

You can also install those packages globally (with `-g` or `--global` flag).

```sh
sudo npm i -g postcss-cli @fullhuman/postcss-purgecss autoprefixer rtlcss
```


## Notes

### Please Do Not Changing `hb` and `hugopress` Parameters via Language-Scoped Configurations

HB relies on the configurations cross modules, but there is an known [issue](https://github.com/gohugoio/hugo/issues/10620) that language-scoped parameters will override the params instead of deep merging, which break the configurations cross modules.

For example, the following configuration example is **not** allowed.

{{< bootstrap/config-toggle filename=hugo >}}
[[language.en]]
[language.en.params.hb]
foo = "bar"
[language.en.params.hugopress]
foo = "bar"
{{< /bootstrap/config-toggle >}}
