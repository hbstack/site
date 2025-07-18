---
title: "Add Custom HTML Markup"
linkTitle: HTML
date: 2023-04-16T13:02:38+08:00
draft: false
series:
  - Docs
categories:
tags:
  - HTML
  - Hooks
images:
authors:
  - HB
---

You may want to include custom HTML markup to extend functionalities, that's quit easy to do that with HugoPress built-in hooks and HB custom hooks.

<!--more-->

Let's get started with a simple example, which displays a greeting message on the top of page.

![example](example.png)

## Choose the Right Hook

- [HugoPress built-in hooks](https://hugomods.com/en/docs/hugopress/#hooks).
- [Header's hooks]({{< relref "modules/header/overview#hooks" >}}).
- [Footer's hooks]({{< relref "modules/footer/overview#hooks" >}}).
- [Blog's hooks]({{< relref "modules/blog/hooks" >}}).
- [Docs's hooks]({{< relref "modules/docs#hooks" >}}).
- You can find more on our documentation.

In this example, the `body-begin` hook is the hook we're looking for.

## Configuration

And then configure the hook.

{{% bs/config-toggle params %}}
{{% code-snippet params.yaml %}}
{{% /bs/config-toggle %}}

If everything is OK, Hugo'll complaint about _partial not found_.

{{% bs/alert warning %}}
{{% markdownify %}}
It's recommended to use `hb-custom` as the HugoPress module name, to avoid conflicting with other HugoPress modules.
{{% /markdownify %}}
{{% /bs/alert %}}

{{< bs/collapse cacheable primary true >}}
Since the example HTML markup doesn't contains dynamic content, mark it as `cacheable` to improve build performance.
{{< /bs/collapse >}}

## Create Partial

It's time to create the partial for including custom HTML. The partial name is related to the module and hook name.

{{< bs/collapse "layouts/partials/hugopress/modules/hb-custom/hooks/body-begin.html" primary true >}}
```html
{{% code-snippet body-end.html %}}
```
{{< /bs/collapse >}}

You're able to access Page variables via `.Page`, please don't forgot disabling the `cacheable` for dynamic data.
See also [Hooks Context](https://hugomods.com/en/docs/hugopress/#hooks-context).

That's it, now the greeting message will appear at the top of page.
