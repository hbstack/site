---
title: "Install on Existing Sites"
linkTitle: "Install on Existing Sites"
date: 2023-06-18T10:49:47+08:00
series:
  - Docs
categories:
  - Installation
tags:
images:
authors:
  - HB
---

This guide introduces how to install HB and modules to existing sites.

<!--more-->

## Initialize Hugo Module

{{< bs/alert >}}
{{% markdownify %}}
Skip this step if there is a `go.mod` in the site root, since you've already initialized the module.
{{% /markdownify %}}
{{< /bs/alert >}}

To use Hugo modules, we need to initialize the site as a module. Please replace the `github.com/user/repo` with yours.

{{% code-snippet initialize-module %}}

## Install Build Tools

HB requires some [build tools]({{< relref "docs/getting-started/prerequisites#build-tools" >}}) to be installed.

## Tweak Configuration

This guide uses the [recommended meta module]({{< relref "modules/meta#recommended-meta-module" >}}) as the starting point for using HB, you can find more available modules on [modules]({{< relref "modules" >}}).

1. Remove the `theme` setting if present.
1. Make sure the following required configuration have been set.

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

### Change PWA Caching Strategies

To avoid caching problems on development env (`hugo server`), it's recommended to change the PWA caching strategies.

{{< bs/config-toggle "config/development/params" >}}
{{% code-snippet pwa.yaml %}}
{{< /bs/config-toggle >}}

## Previewing and Tweaking

Now you should be able to start the Hugo server to preview, and tweaking the modules.

## Troubleshooting

There are many causes that may makes build fails.

- Missing previous theme's shortcodes.
- Conflicting with previous configurations and parameters.
- See also the [troubleshooting]({{< relref "docs/troubleshooting" >}}) page.

Please feel free to [ask a question](https://github.com/orgs/hbstack/discussions/new?category=q-a) if you don't know how to solve it.
