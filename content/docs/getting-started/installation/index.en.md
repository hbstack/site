---
title: "Installation"
date: 2022-12-14T19:53:42+08:00
draft: false
nav_weight: 3
series:
  - Docs
categories:
  - Installation
tags:
authors:
  - RazonYang
menu:
  footer:
    parent: docs
    weight: 33
    params:
      icon:
        vendor: bs
        name: download
---

We provide a [starter theme template](https://github.com/razonyang/hb-theme) for you to create a HB site quickly.

<!--more-->

## Installation

### Clone Repository

```sh
git clone --depth 1 https://github.com/razonyang/hb-theme blog

cd blog
```

The `blog` is the local directory, change it at will.

### Module Path

Firstly, we need to change the module path located in `go.mod`, replace the `module github.com/razonyang/hb-theme` with your own, such as `module github.com/user/repo`.

```sh
sed -i -e 's/module\ github.com\/razonyang\/hb-theme/module\ github.com\/user\/repo/' go.mod
```

### Push to Remote Repository

#### Commit Changes

```sh
git add .

git commit --amend
```

Modify the commit message, such as `First commit`.

#### Modify Remote Repository

```sh
git remote set-url origin https://github.com/user/repo
```

#### Push

```sh
git push origin main
```

## Hugo Module Proxy (Optional)

If you're located at China mainland without VPN, the Hugo module download may fail.

There are two proxies for this: GOPROXY.CN and GOPROXY.IO.

```sh
export HUGO_MODULE_PROXY=https://goproxy.cn
```

{{< bootstrap/alert info >}}
{{% markdownify %}}
Hugo doesn't respect the `GOPROXY` env var, please use `HUGO_MODULE_PROXY` instead.
{{% /markdownify %}}
{{< /bootstrap/alert >}}

You can also set the `module.proxy` instead of using env var.

{{< bootstrap/config-toggle filename=hugo >}}
module:
proxy: https://goproxy.cn
{{< /bootstrap/config-toggle >}}

## Preview

```sh
hugo server --gc --disableFastRender
```

## What's Next?

- Tweak [Configuration]({{< ref "docs/configuration" >}})
- Create [Content]({{< ref "docs/content" >}})
- [Deployment]({{< ref "docs/deployment" >}})
