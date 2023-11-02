---
type: docs
aliases:
  - /zh-hant/docs/develop/style-guide/
title: "風格指南"
date: 2022-12-14T20:00:32+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: code-square
  className: text-danger
series:
  - 文檔
categories:
  - 開發
tags:
  - CSS
  - HTML
  - JavaScript
  - SCSS
  - 風格指南
  - TypeScript
authors:
  - HB
---

毋庸置疑的，相同的編碼風格有助於開發人員相互合作。如果你想幫助我們改進代碼，我們建議你花幾分鐘時間來了解一下所使用的編碼風格。

<!--more-->

## TypeScript 風格指南

我們使用 eslint 來檢查 TypeScript 和 JavaScript 編碼樣式。

```sh
npm run eslint
```

## SCSS 風格指南

我們通過 stylelint 檢查 SCSS 編碼樣式。

```sh
npm run stylelint
```

## Hugo 風格指南

### 命名約定

#### 參數命名約定

因爲 Hugo 參數名大小寫不敏感，推薦使用 [snake_case](https://en.wikipedia.org/wiki/Snake_case) 命名方式。

| Parameter |     |
| --------- | --- |
| `FooBar`  | ❌  |
| `fooBar`  | ❌  |
| `foobar`  | ❌  |
| `foo-bar` | ❌  |
| `foo_bar` | ✅  |

#### 文件命名約定

於某些文件系統，文件名大小寫敏感，因此我們推薦總是使用 `kebab-case` 命名。

| Filename       |
| -------------- | --- |
| `fooBar.html`  | ❌  |
| `foo-bar.html` | ✅  |

#### 變量命名約定

1. 對於可導出的變量，使用 `PascalCase` 命名方式，如 Go 語言一樣。
2. 對於局部變量，使用 `camelCase` 命名方式。

## Bootstrap 风格指南

我们建议尽量使用 Bootstrap CSS 工具类，以减少 CSS 包的大小。
