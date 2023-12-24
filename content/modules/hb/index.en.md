---
type: docs
title: "Core Module"
linkTitle: "Core"
nav_weight: 10
nav_icon:
  vendor: bs
  name: gear-wide-connected
  className: text-success
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
menu:
  footer:
    parent: hb-modules
    weight: 1
    params:
      icon:
        vendor: simple
        name: hugo
aliases:
  - /en/docs/modules/hb/
---

The `github.com/hbstack/hb` is the core module of HB framework, which automatically loads and compiles the module's SCSS and TypeScript, as well as rendering HTML.

<!--more-->

{{% hb-module hb %}}

## Features

- Implements [HugoPress](https://hugomods.com/en/docs/hugopress/).
- Baseof template.
- Fix flickering issue of dark mode on redirect pages.

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

See also [creating a module]({{< relref "develop/module" >}}).

## Site Parameters

| Name              |  Type   | Required |      Default      | Description                                |
| ----------------- | :-----: | :------: | :---------------: | ------------------------------------------ |
| `css_bundle_name` | string  |    -     |       `hb`        | The bundle name of CSS.                    |
| `debug`           | boolean |    -     |      `false`      | Debug mode.                                |
| `js_bundle_name`  | string  |    -     |       `hb`        | The bundle name of JS.                     |
| `logo`            | string  |    -     | `images/logo.png` | The logo path relative to `assets` folder. |
| `full_width`      | boolean/array | - | `false` | Whether to take full width, a boolean value or array of first level sections, e.g. `["docs", "blog"]`. |
| `full_width_types` | object | - | - | The content types to take full width, used by modules. |

{{< bs/config-toggle hugo >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}

## Page Parameters

| Name              |  Type   | Required |      Default      | Description                                |
| ----------------- | :-----: | :------: | :---------------: | ------------------------------------------ |
| `full_width` | boolean  |    -     |       `false`        | When `true` then the current page takes full width, otherwise fallback to the site's `full_width`. |

## HugoPress Attributes

| Name      | Description     |
| --------- | --------------- |
| `hb-main` | For `.hb-main`. |

## HugoPress Hooks

| Name            | Description                    |
| --------------- | ------------------------------ |
| `hb-body-begin` | Follows the `body-begin` hook. |
| `hb-body-end`   | Before the `body-end` hook.    |
