---
title: "Module Guide"
date: 2023-02-16T14:08:34+08:00
draft: false
series:
  - Docs
categories:
  - Develop
tags:
  - Module
images:
authors:
  - HB
---

In this article, you will learn how to create a HB module.

Let's take `hello` as example, which:

1. Generates `<html>`, `<body>` attributes.
1. Generates meta tags, or even import external CSS and JS.
1. Generates greeting messages on HTML pages, and style it with CSS.
1. Generates greeting messages on browser console via JS.

<!--more-->

## Initial Module

First of all, create and initial a module.

```sh
mkdir hello && cd hello

git init

hugo mod init github.com/vendor/hello
```

Replace the module path `github.com/vendor/hello` as your own, the `vendor` is your username or organization name.

## Import the Local Module

It's recommended importing the local module into your site for developing.

1. Import the module into your site's configuration.

{{< bs/config-toggle filename=hugo >}}
[[module.imports]]
path = "github.com/vendor/hello"
{{< /bs/config-toggle >}}

2. And then mapping the module to local path in site's `go.mod`.

```go
replace github.com/vendor/hello => ../hello
```

The `../hello` is a relative path, please modify it according to your own environment.

## Module Configuration File

Create a module configuration file will be used in the rest steps.

{{< bs/config-toggle filename=hugo >}}
[[module.imports]]
path = "github.com/hbstack/hb"
{{< /bs/config-toggle >}}

```toml
[[module.imports]]
path = "github.com/hbstack/hb"
```

It's time to start implementing the functionality, let's generate some HTML attributes and markup on pages.

## Generate `<html>` and `<body>` Attributes

To enable the additional `<html>` attributes by setting the following configuration.

{{< bs/config-toggle filename=hugo >}}
[params.hugopress.modules.hb-vendor-hello.attributes.document]
cacheable = true
[params.hugopress.modules.hb-vendor-hello.attributes.body]
cacheable = true
{{< /bs/config-toggle >}}

The `cacheable` flag caches the attributes to improve the build performance, disable it if the attributes contain dynamic data.

And then define the additional attributes.

```go-html-template
// layouts/partials/hugopress/modules/hb-vendor-hello/attributes/document.html
{{- return dict 
  "data-hello" "foo"
-}}

// layouts/partials/hugopress/modules/hb-vendor-hello/attributes/document.html
{{- return dict 
  "data-hello" "bar"
-}}
```

If everything is OK, the `<html>` tag looks like:

```html
<html ... data-hello="foo" ...>
  <body ... data-hello="bar" ...>
  </body>
</html>
```

## Generates Meta Tags

There are two places for meta tags to put into: `head-begin` and `head-begin`.

Append the following configuration to enable it.

{{< bs/config-toggle filename=hugo >}}
[params.hugopress.modules.hb-vendor-hello.hooks.head-begin]
cacheable = true

[params.hugopress.modules.hb-vendor-hello.hooks.head-end]
cacheable = true
{{< /bs/config-toggle >}}

> Same as attributes, remove the `cacheable` if the meta tags template contains dynamic data.

And then create the corresponding templates.

```go-html-template
// layouts/partials/hugopress/modules/hb-vendor-hello/hooks/head-begin.html
<meta name="hello" content="head-begin">

// layouts/partials/hugopress/modules/hb-vendor-hello/hooks/head-end.html
<meta name="hello" content="head-end">
```

Now the pages have the following meta tags.

```html
<meta name="hello" content="head-begin">
<meta name="hello" content="head-end">
```

## Generates Greeting Messages Markup

Finally, create greeting messages on the beginning and ending.

Configuration as following.

{{< bs/config-toggle filename=hugo >}}
[params.hugopress.modules.hb-vendor-hello.hooks.body-begin]
cacheable = true

[params.hugopress.modules.hb-vendor-hello.hooks.body-end]
cacheable = true
{{< /bs/config-toggle >}}

```go-html-template
// layouts/partials/hugopress/modules/hb-vendor-hello/hooks/body-begin.html
<div class="hb-vendor-hello text-center py-2">Greeting from body begin.</div>

// layouts/partials/hugopress/modules/hb-vendor-hello/hooks/body-end.html
<div class="hb-vendor-hello text-center py-2">Greeting from body end.</div>
```

> The hooks like `head-begin`, `head-end`, `body-begin` and `body-end` can also used to import external CSS, JS or other stuff.
2. It's allowed that defines other hooks other than [HugoPress](https://github.com/hugomods/hugopress) built-in hooks, such as the built-in header, footer, blog and docs modules.

## Module Style

Next, let's change the background color of the greeting messages.

{{< bs/config-toggle filename=hugo >}}
[params.hb.vendor_hello]
bg = "green"
{{< /bs/config-toggle >}}

In order not to conflict with the Hugo modules and the built-in HB modules, it is recommended that the parameters start with `hb.[vendor]_[module]`.

Create the SCSS files.

```scss
// assets/hb/modules/vendor-hello/scss/variables.tmpl.scss
$hb-vendor-hello-bg: {{ default "blue" .params.hb.vendor_hello.bg }};

// assets/hb/modules/vendor-hello/scss/index.scss
.hb-vendor-hello {
    background: $hb-vendor-hello-bg;
    color: var(--#{$prefix}white);
}
```

As the code shown, we declared a SCSS variable (reading from the configuration).

> Restart the Hugo server to ensure loading the SCSS files fully.

## Module JavaScript

{{< bs/config-toggle filename=hugo >}}
[params.hb.vendor_hello]
message = "Hello world"
{{< /bs/config-toggle >}}

```ts
// assets/hb/modules/vendor-hello/js/index.ts
import * as params from '@params'

console.log(params.vendor_hello.message)
```

The browser console will show the message `Hello world`.

## Test on Production Mode

The PurgeCSS will be processed on production mode, we could preview it on production mode via:

```sh
hugo server -e production --minify --gc --renderToDisk -b http://localhost:1313 -p 1313
```

## Deployment

Once the module is done, we can publish it by pushing it to your git providers, and then remove the mapping from `go.mod`.
