---
type: docs
aliases:
  - /en/docs/develop/style-guide/
title: "Style Guide"
date: 2022-12-14T20:00:32+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: code-square
  className: text-danger
series:
  - Docs
categories:
  - Develop
tags:
  - CSS
  - HTML
  - JavaScript
  - SCSS
  - Style Guide
  - TypeScript
authors:
  - HB
---

Undoubtedly, adhering to the same coding style helps developers work together. We suggest you take a few minutes to learn about the coding style used if you'd like to help us improve the code by submitting pull requests.

<!--more-->

## TypeScript Style Guide

We use eslint to check the TypeScript and JavaScript formatting.

```sh
npm run eslint
```

## SCSS Style Guide

Stylelint is used to check the SCSS styles.

```sh
npm run stylelint
```

## Hugo Style Guide

### Naming Conventions

#### Parameters Naming Convention

Since Hugo parameters are case-insensitive, [`snake_case`](https://en.wikipedia.org/wiki/Snake_case) is preferred.

| Parameter |     |
| --------- | --- |
| `FooBar`  | ❌  |
| `fooBar`  | ❌  |
| `foobar`  | ❌  |
| `foo-bar` | ❌  |
| `foo_bar` | ✅  |

#### File Naming Convention

Filenames are case-sensitive on some file systems, so we recommend always using [`kebab-case`](https://en.wikipedia.org/wiki/Letter_case#Kebab_case).

| Filename       |
| -------------- | --- |
| `fooBar.html`  | ❌  |
| `foo-bar.html` | ✅  |

#### Variable Naming Conventions

1. Use [`PascalCase`](https://en.wikipedia.org/wiki/Camel_case) for exported variables, as Go does.
1. Use [`camelCase`](https://en.wikipedia.org/wiki/Camel_case) for local variables.
