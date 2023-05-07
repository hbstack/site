---
type: docs
title: "核心模塊"
linkTitle: "核心"
nav_weight: 10
nav_icon:
  vendor: bs
  name: gear-wide-connected
  className: text-success
date: 2023-04-12T22:28:04+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
tags:
images:
authors:
  - HB
menu:
  footer:
    parent: hb-modules
    weight: 1
    params:
      icon:
        vendor: simple
        name: hugo
aliases:
  - /zh-hant/docs/modules/hb/
---

`github.com/hbstack/hb` 是 HB 框架的核心模塊，其自動加載和編譯模塊的 SCSS 和 TypeScript，以及渲染 HTML。

<!--more-->

{{% hb-module hb %}}

## 它是如何工作的？

HB 是建立在 [HugoPress](https://hugomods.com/en/docs/hugopress/) 之上的，這是一個與用戶界面無關的模塊化框架，其定義了幾個鉤子用於自動加載模塊。

## 功能特性

- 實現了 [HugoPress](https://hugomods.com/en/docs/hugopress/)。
- 基礎模板。
- 修復重定向頁面上的暗模式閃爍問題。

## 模塊

### 模塊結構

HB 模塊**必須**放在 `assets/hb/modules` 文件夾中，其結構如下。

{{%code-snippet module-structure %}}

HB 將會：

- 從 `scss/variables.tmpl.scss` 中加載 SCSS 變量，然後加載並編譯 `scss/index.scss` 到 CSS 包中。
- 加載並編譯 `js/index.ts` 到 JS 包中。
- `purgecss.config.toml` 用於將樣式添加到 PurgeCSS 白名單中，以避免被刪除。

{{< bs/alert >}}
這些文件都不是必需的。
{{< /bs/alert >}}

### 模塊命名約定

我們建議將你的 HB 模塊命名爲：`vendor-name`，以避免與 HB 內置模塊發生衝突。

- `vendor`：你或組織的名稱。
- `name`：模塊的名稱。

{{< bs/alert >}}
{{% markdownify %}}
`custom` 是爲用戶保留的。
{{% /markdownify %}}
{{< /bs/alert >}}

另請參閱[創建模塊]({{< relref "develop/module" >}})。

## 站點參數

| Name              |  Type   | Required |      Default      | Description                       |
| ----------------- | :-----: | :------: | :---------------: | --------------------------------- |
| `css_bundle_name` | string  |    -     |       `hb`        | CSS 的名稱。                      |
| `debug`           | boolean |    -     |      `false`      | 調試模式。                        |
| `js_bundle_name`  | string  |    -     |       `hb`        | JS 的名稱。                       |
| `logo`            | string  |    -     | `images/logo.png` | Logo 路徑，相對於 `assets` 目錄。 |

{{< bs/config-toggle hugo >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}

## HugoPress 屬性

| Name      | Description          |
| --------- | -------------------- |
| `hb-main` | `.hb-main` HTML 塊。 |

## HugoPress 鉤子

| Name            | Description                |
| --------------- | -------------------------- |
| `hb-body-begin` | 於 `body-begin` 鉤子之後。 |
| `hb-body-end`   | 於 `body-end` 鉤子之前。   |
