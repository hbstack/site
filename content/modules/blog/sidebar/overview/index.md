---
type: docs
title: "Blog Sidebar Overview"
linkTitle: "Overview"
date: 2023-06-19T19:03:29+08:00
nav_weight: 1
# nav_icon:
#   vendor: bs
#   name: book
series:
  - Modules
categories:
  - Sidebar
tags:
images:
authors:
  - HB
---

The blog module supports an optional sidebar layout.

<!--more-->

## How to Use It?

To enable the sidebar, you'll need to import at least one sidebar modules, such as the [posts]({{< relref "modules/blog/sidebar/posts" >}}) and [taxonomies]({{< relref "modules/blog/sidebar/taxonomies" >}}) modules.

## How to Add Sidebar Widget

You're able to add custom sidebar widget, for example.

Firstly, declare the following configuration.

{{< bs/config-toggle hugo >}}
{{% code-snippet custom-widget.yaml %}}
{{< /bs/config-toggle >}}

And then create the related template.

{{% bs/collapse "layouts/partials/hugopress/modules/hb-custom/hooks/hb-blog-sidebar.html" primary true %}}
{{% code-snippet custom-widget-html %}}
{{% /bs/collapse %}}

## Change the Order of Modules

You can also tweak the order of sidebar modules, for example.

{{< bs/config-toggle hugo >}}
{{% code-snippet order.yaml %}}
{{< /bs/config-toggle >}}
