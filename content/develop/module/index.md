---
type: docs
aliases:
  - /en/docs/develop/module/
title: "Module Guide"
date: 2023-02-16T14:08:34+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: boxes
  className: text-primary
series:
  - Docs
categories:
  - Develop
tags:
  - Module
  - SCSS
  - Hooks
  - TypeScript
  - JavaScript
  - CSS
images:
authors:
  - HB
---

Do you want to create and share your creative HB modules? Here is everything you want to know.

## Example Functionalities

> [Source code](https://github.com/hbstack/hello).

Let's get started with a `hello` example, which:

- Appends attributes on `<html>` and `<body>`.
- Using hooks to include custom HTML markup, such as meta tags, CSS and JS.
- Generates greeting messages on HTML pages, and style/modify it with SCSS/TypeScript.

<!--more-->

## Preparations

- An HB site for testing your module, you could use the [starter theme](https://github.com/hbstack/theme) if you don't have one yet.
- Familiar with Hugo development.
- [Build tools]({{< relref "docs/getting-started/prerequisites#build-tools" >}}) installations.

## Initial Module

First of all, create and initial a module.

{{% code-snippet init-module %}}

Replace the module path `example.com/vendor/hello` as your own, such as `github.com/hbstack/hello`, the `vendor` is your organization name or username.

{{< bs/alert >}}
{{% markdownify %}}
This guide uses `example.com/vendor/hello` as the module path in the rest of steps.
{{% /markdownify %}}
{{< /bs/alert >}}

## Set up a HB Site

It's recommended importing the local module into your HB site for developing.

### Import the Local Module

Firstly, we need to import the local hello module into site's configuration:

{{< bs/config-toggle filename=hugo >}}
[[module.imports]]
path = "example.com/vendor/hello"
{{< /bs/config-toggle >}}

And then mapping the module to local path in site's `go.mod`.

{{% code-snippet replace-go-mod %}}

The `/path/to/hello` is the file path of the hello module, both of relative path and absolute path are valid.

### Start the Testing Site

{{% code-snippet hugo-server %}}

## Module Configuration File

Back to the module, create a module configuration file.

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}

It declared that the `github.com/hbstack/hb` module is required.

It's time to start implementing the functionalities.

{{< bs/alert warning >}}
{{% markdownify %}}
The `hb-vendor-hello` is used as the HugoPress module name, we suggest naming your module with same pattern `hb-vendor-name`, to avoid conflicting with HugoPress modules and HB built-in modules.
{{% /markdownify %}}
{{< /bs/alert >}}

## Append Attributes on `<html>` and `<body>`

To add additional HTML attributes by appending the following configuration.

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet attributes.toml %}}
{{< /bs/config-toggle >}}

The `cacheable` flag caches the attributes to improve the build performance, disable it if the attributes contain dynamic data.

And then define the additional attributes via partials.

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/attributes/document.html" primary true %}}
{{% code-snippet attributes-document %}}
{{% /bs/collapse %}}

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/attributes/body.html" primary true %}}
{{% code-snippet attributes-body %}}
{{% /bs/collapse %}}

If everything is OK, the HTML source code looks like follows:

{{% code-snippet attributes-output %}}

## Using Hooks

This example uses only a few hooks, all available hooks could be found on our docs and [HugoPress's built-in hooks](https://hugomods.com/en/docs/hugopress/#hooks).

> Please note that the context of hook partials is different than regular partial, see [hooks context](https://hugomods.com/en/docs/hugopress/#hooks-context).

### Generate Stuff on `<head>`

There are two built-in hooks for putting custom stuff on `<head>`: `head-begin` and `head-end`, which used to generate meta tags, include stylesheet and so on.

Append the following configuration to enable it.

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet hooks-head.toml %}}
{{< /bs/config-toggle >}}

> Same as attributes, disable the `cacheable` if the template contains dynamic data.

And then create the corresponding templates.

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/hooks/head-begin.html" primary true %}}
{{% code-snippet hook-head-begin %}}
{{% /bs/collapse %}}

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/hooks/head-end.html" primary true %}}
{{% code-snippet hook-head-end %}}
{{% /bs/collapse %}}

Now the pages have the following meta tags.

{{% code-snippet hook-head-output %}}

### Generates the Greeting Message

Finally, create greeting messages on the top of pages.

Configuration as following.

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet hook-body-begin.toml %}}
{{< /bs/config-toggle >}}

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/hooks/body-begin.html" primary true %}}
{{% code-snippet body-begin %}}
{{% /bs/collapse %}}

Now the greeting message will be shown on the top of pages.

## Styling Module

You may want to beautify the HTML generated by module with styles, let's take the greeting message as an example that change the background and color.

To make module flexible, we declare parameters for those styles.

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet style-config.toml %}}
{{< /bs/config-toggle >}}

And then create the SCSS files.

{{% bs/collapse "assets/hb/modules/vendor-hello/scss/variables.tmpl.scss" primary true %}}
```scss
{{% code-snippet variables.scss %}}
```
{{% /bs/collapse %}}

{{% bs/collapse "assets/hb/modules/vendor-hello/scss/index.scss" primary true %}}
```scss
{{% code-snippet style.scss %}}
```
{{% /bs/collapse %}}

Restart the Hugo server to ensure loading the SCSS files fully.

## Adding Scripts

Finally, let's modify the greeting message in JS way.

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet js-config.toml %}}
{{< /bs/config-toggle >}}

{{% bs/collapse "assets/hb/modules/vendor-hello/js/index.ts" primary true %}}
```ts
{{% code-snippet index.ts %}}
```
{{% /bs/collapse %}}

## Test on Production Mode

The styles used by JavaScript will be removed by PurgeCSS, please checkout the [PurgeCSS]({{< relref "develop/purgecss" >}}) section for details.

The PurgeCSS gets processed on production mode only, we could preview the module on production mode via:

```sh
hugo server -e production --minify --gc --renderToDisk -b http://localhost:1313 -p 1313
```

## Deployment

Once the module is done, it's time to publish it by pushing it to your git providers, and then remove the mapping from `go.mod`.
