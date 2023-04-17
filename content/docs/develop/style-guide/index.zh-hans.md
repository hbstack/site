---
title: "风格指南"
date: 2022-12-14T20:00:32+08:00
draft: false
nav_weight: 1
series:
  - 文档
categories:
  - 开发
tags:
  - CSS
  - HTML
  - JavaScript
  - SCSS
  - 风格指南
  - TypeScript
authors:
  - HB
---

毋庸置疑的，相同的编码风格有助于开发人员相互合作。如果你想帮助我们改进代码，我们建议你花几分钟时间来了解一下所使用的编码风格。

<!--more-->

## TypeScript 风格指南

我们使用 eslint 来检查 TypeScript 和 JavaScript 编码样式。

```sh
npm run eslint
```

## SCSS 风格指南

我们通过 stylelint 检查 SCSS 编码样式。

```sh
npm run stylelint
```

## Hugo 风格指南

### 命名约定

#### 参数命名约定

因为 Hugo 参数名大小写不敏感，推荐使用 [snake_case](https://en.wikipedia.org/wiki/Snake_case) 命名方式。

| Parameter |     |
| --------- | --- |
| `FooBar`  | ❌  |
| `fooBar`  | ❌  |
| `foobar`  | ❌  |
| `foo-bar` | ❌  |
| `foo_bar` | ✅  |

#### 文件命名约定

于某些文件系统，文件名大小写敏感，因此我们推荐总是使用 `kebab-case` 命名。

| Filename       |
| -------------- | --- |
| `fooBar.html`  | ❌  |
| `foo-bar.html` | ✅  |

#### 变量命名约定

1. 对于可导出的变量，使用 `PascalCase` 命名方式，如 Go 语言一样。
2. 对于局部变量，使用 `camelCase` 命名方式。
