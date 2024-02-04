---
type: docs
title: "HB PWA 安裝器"
linkTitle: "PWA 安裝器"
description: "HB PWA 安裝器模塊於頁面底部顯示一個按鈕，用於添加站點到首頁。"
date: 2024-02-05T02:49:57+08:00
draft: false
nav_icon:
  vendor: bs
  name: rocket
series:
  - 模塊
categories:
tags:
  - PWA
  - PWA 安裝器
  - PWA 安裝按鈕
images:
authors:
  - HB
---

{{< youtube 8hpoIbeWib8 >}}
{.mb-5}

{{% hb-module "pwa-installer" %}}

## 站點參數

{{< bs/config-toggle filename=params title="站點參數" >}}
{{< code-snippet "params.yaml" >}}
{{< /bs/config-toggle >}}

### `delay`

多久後自動隱藏按鈕，單位：秒。

### `dismissed_period`

不予理會的有效期，單位：秒。

## 限制

支持 Chrome, Edge 和 Opera 瀏覽器，詳情請參閱 [Browser compatibility](https://developer.mozilla.org/en-US/docs/Web/API/Window/beforeinstallprompt_event#browser_compatibility)。
