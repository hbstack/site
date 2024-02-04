---
type: docs
title: "HB PWA 安装器"
linkTitle: "PWA 安装器"
description: "HB PWA 安装器模块于页面底部显示一个按钮，用于添加站点到首页。"
date: 2024-02-05T02:49:57+08:00
draft: false
nav_icon:
  vendor: bs
  name: rocket
series:
  - 模块
categories:
tags:
  - PWA
  - PWA 安装器
  - PWA 安装按钮
images:
authors:
  - HB
---

{{< youtube 8hpoIbeWib8 >}}
{.mb-5}

{{% hb-module "pwa-installer" %}}

## 站点参数

{{< bs/config-toggle filename=params title="站点参数" >}}
{{< code-snippet "params.yaml" >}}
{{< /bs/config-toggle >}}

### `delay`

多久后自动隐藏按钮，单位：秒。

### `dismissed_period`

不予理会的有效期，单位：秒。

## 限制

支持 Chrome, Edge 和 Opera 浏览器，详情请参阅 [Browser compatibility](https://developer.mozilla.org/en-US/docs/Web/API/Window/beforeinstallprompt_event#browser_compatibility)。
