---
type: docs
title: "Modules Principle"
linkTitle: "Modules"
description: "This article describes the structure of the module, its principles and some development conventions."
date: 2024-04-25T01:33:24Z
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: boxes
series:
  - Modules
categories:
tags:
  - SCSS
  - TypeScript
  - PurgeCSS
images:
authors:
  - HB
---

## Structure

{{< page-resource-content "code/module-structure" >}}

HB will:

- Loads SCSS variables from `scss/variables.tmpl.scss`, and then loads and compiles `scss/index.scss` into the CSS bundle.
- Loads and compiles the `js/index.ts` into the JS bundle.
- The `purgecss.config.toml` used to add styles to PurgeCSS safelist, in order to avoid getting removing.

{{% bs/alert %}}
Except `go.mod` and Hugo configuration file, the rest of files are optional.
{{% /bs/alert %}}

### SCSS

#### SCSS Variables

The `scss/variables.tmpl.scss` is a template that used to define SCSS variables, which allow using Hugo template syntaxes, such as reading parameters from Hugo configuration.

#### SCSS Entry

The `scss/index.scss` will be imported and compiled into the CSS bundle, you're able to use the variables defined above.

### TypeScript

The `js/index.ts` will be imported and compiled into the JavaScript bundle.

### PurgeCSS

The `purgecss.config.toml` used to append styles to [PurgeCSS safelist]({{< relref "develop/purgecss" >}}), in order to avoid getting removing on production environment.

## Convertions

### Module Naming Convention

We strongly recommend naming your HB module in form: `vendor-name`, in order to avoid conflicting with HB built-in modules.

- `vendor`: your name or organization name.
- `name`: the module name.

{{% bs/alert %}}
The `custom` is reserved for users.
{{% /bs/alert %}}

See also [creating a module]({{< relref "develop/module" >}}).

### Module Parameters Naming Convention

Since Hugo configuration are case-insensitive, it's recommended to name parameters in [snake_case](https://simple.wikipedia.org/wiki/Snake_case). In addition to this, there is a need to categorize parameters by their module names.

{{% bs/alert %}}
The module names should follow the [snake_case](https://simple.wikipedia.org/wiki/Snake_case) rule as well, since keys contains dash (`-`) doesn't play well on TOML.
{{% /bs/alert %}}

Let's said there is a third party module called `razonyang-hello`, it's parameters should look like the follows.

{{< page-resource-content "code/module-naming-example" >}}
