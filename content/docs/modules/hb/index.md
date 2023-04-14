---
title: "Core Module"
linkTitle: "Core"
nav_weight: 10
date: 2023-04-12T22:28:04+08:00
draft: false
series:
  - Docs
categories:
  - Modules
tags:
images:
authors:
  - HB
---

The `github.com/hbstack/hb` is the core module of HB framework, which automatically loads and compiles the module's SCSS and TypeScript, as well as rendering HTML.

<!--more-->

{{% hb-module hb %}}

## How it Works?

HB is built on top of [HugoPress](https://hugomods.com/en/docs/hugopress/), a UI-less modular framework that defines several hooks for loading modules automatically.

## Module

### Module Structure

HB module **MUST** be placed at the `assets/hb/modules` folder, which has the following structure.

{{% code-snippet module-structure %}}

HB will:

- Loads SCSS variables from `scss/variables.tmpl.scss`, and then loads and compiles `scss/index.scss` into the CSS bundle.
- Loads and compiles the `js/index.ts` into the JS bundle.
- The `purgecss.config.toml` used to add styles to PurgeCSS whitelist, in order to avoid getting removing.

{{< bs/alert >}}
None of those files are not required.
{{< /bs/alert >}}

### Module Naming Convention

We recommend naming your HB module in form: `vendor-name`, in order to avoid conflicting with HB built-in modules.

- `vendor`: your name or organization name.
- `name`: the module name.

{{< bs/alert >}}
{{% markdownify %}}
The `custom` is reserved for users.
{{% /markdownify %}}
{{< /bs/alert >}}

## Site Parameters

| Name              |  Type   | Required | Default | Description             |
| ----------------- | :-----: | :------: | :-----: | ----------------------- |
| `css_bundle_name` | string  |    -     |  `hb`   | The bundle name of CSS. |
| `debug`           | boolean |    -     | `false` | Debug mode.             |
| `js_bundle_name`  | string  |    -     |  `hb`   | The bundle name of JS.  |

{{< bs/config-toggle hugo >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}
