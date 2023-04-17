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
  - HB
menu:
  footer:
    parent: docs
    weight: 33
    params:
      icon:
        vendor: bs
        name: download
---

We provide a [starter theme template](https://github.com/hbstack/theme) for you to create a HB site quickly.

<!--more-->

## Installation

Install the HB theme in one minute.

{{< asciinema id=576711 speed=2 >}}

Since there are a lot of images, Hugo server takes a long time to process on first run. You may want to remove the unused images and commit the `resources/images` folder to improve the build performance.

### Clone Repository

{{% code-snippet clone %}}

The `blog` is the local directory, change it at will.

### Module Path

Firstly, we need to change the module path located in `go.mod`, replace the `module github.com/hbstack/theme` with your own, such as `module github.com/user/repo`.

```sh
sed -i -e 's/module\ github.com\/hbstack\/theme/module\ github.com\/user\/repo/' go.mod
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

If you're located at China mainland without VPN, the Hugo module download may fail, see [Go and Hugo Proxy Servers](https://hugomods.com/en/blog/2023/04/go-and-hugo-proxy-servers/) for setting up the Hugo Modules proxy.

## Install Build Tools

```sh
npm ci
```

Please note that Go and Node.js are required, read more on [build tools]({{< relref "docs/getting-started/prerequisites#build-tools" >}}).

## Start Hugo Server

### Preview in Development Mode

```sh
npm run dev
```

### Preview in Production Mode

```sh
npm run prod
```

## What's Next?

- Remove the unused configurations, menus, content, images and GitHub actions (workflows).
- Tweak [configuration]({{< ref "docs/configuration" >}}) and parameters, such as `baseURL`, `giscus.*`.
- Create [content]({{< ref "docs/content" >}}).
- [Deploy sites]({{< ref "docs/deployment" >}}).
