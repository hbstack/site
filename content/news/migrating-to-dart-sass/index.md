---
title: "Migrating to Dart Sass"
description: "LibSass is deprecated a long time ago, it is time to migrate to Dart Sass."
date: 2024-08-22T20:16:25+08:00
draft: false
series:
  - News
categories:
tags:
  - Sass
  - Dart Sass
  - LibSass
images:
authors:
  - HB
---

## How to Migrate to Dart Sass?

Since the Dart Sass isn't included into Hugo binary, you've to [install](https://gohugo.io/hugo-pipes/transpile-sass-to-css/#installing-in-a-development-environment) it on your environment first, and upgrade modules, then rebuild sites.

If there is any errors, please report to us via [GitHub Discussions](https://github.com/orgs/hbstack/discussions).

### Dart Sass Warnings?

You may see some warnings from Dart Sass, it has been fixed in Bootstrap, but not release yet, to fix it, you'll need to upgrade Bootstrap to latest dev version.

```sh
hugo mod get github.com/twbs/bootstrap@main
```

## How to Keep Using LibSass?

If you don't have time to do it or do not care about this, you can set the following parameters as `libsass`, to keep using LibSass.

1. `hb.sass_transpiler` - HB Framework Core Module, required.
2. `search.sass_transpiler` - Search Module, optional.
3. `decap_cms.sass_transpiler` - Decap CMS Module, optional.
4. `swagger_ui.sass_transpiler` - Swagger UI Module, optional.
