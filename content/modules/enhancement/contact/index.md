---
type: docs
title: "Contact Module"
linkTitle: "Contact"
date: 2023-06-20T15:26:36+08:00
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - Modules
categories:
tags:
  - Contact
  - Contact Form
images:
authors:
  - HB
---

The contact module ships with a layout and shortcode for generating contact forms, which are designed to be compatible with mosts of form backends.

<!--more-->

{{% hb-module contact %}}

## Site Parameters

{{% parameters params.en.toml %}}

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

## Known Compatible Form Backends

Listed in alphabetically, please feel free to add compatible backends [here](https://github.com/hbstack/site/edit/main/data/contact-form-backends.toml).

{{< contact-form-backends >}}

## Usage

There are multiple ways to generate the contact form.

### Generate Contact Form via Layout

This module ship with a built-in layout called `contact`, you can simply create a contact page.

{{% bs/collapse "content/contact/_index.md" primary true %}}
{{% code-snippet contact-page %}}
{{% /bs/collapse %}}

You can also use any custom path other than `/contact/`, what you need to do is that specify the `layout` as `contact`. Let's take `/contact-us/` as an example.

{{% bs/collapse "content/contact-us/_index.md" primary true %}}
{{% code-snippet contact-page-with-layout %}}
{{% /bs/collapse %}}

### Generate Contact Form via Shortcode

This module also provides a shortcode called `hb/contact` for generating contact forms. The shortcode accepts same [parameters](#site-parameters) listed above to override the site configuration.

```markdown
<div class="row row-cols-1 row-cols-lg-2">
  <div class="col">
    {{</* hb/contact */>}}
  </div>
  <div class="col">
    {{</* hb/contact endpoint="https://example.com/contact/sales" file=true */>}}
  </div>
</div>
```

![Contact shortcode example](shortcode-example.png)
