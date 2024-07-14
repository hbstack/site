---
type: docs
aliases:
  - /en/docs/modules/docs/hooks/
title: "Docs Hooks"
linkTitle: "Hooks"
date: 2023-04-15T02:44:01+08:00
draft: false
nav_icon:
  vendor: bs
  name: gear
series:
  - Docs
categories:
  - Modules
tags:
  - Hooks
images:
authors:
  - HB
---

The list of docs's custom hooks.

<!--more-->

| Name                         | Description                                   |
| ---------------------------- | --------------------------------------------- |
| `hb-docs-main-begin`         | Before docs main.                             |
| `hb-docs-main-end`           | Follows docs main.                            |
| `hb-docs-doc-toc-begin`      | Before ToC.                                   |
| `hb-docs-doc-toc-end`        | Follows ToC.                                  |
| `hb-docs-doc-content-begin`  | Before post content.                          |
| `hb-docs-doc-content-end`    | Follows post content.                         |
| `hb-docs-doc-comments-begin` | Before comments.                              |
| `hb-docs-doc-comments`       | Comments, used to implement comments engines. |
| `hb-docs-doc-comments-end`   | Follows comments.                             |
| `hb-docs-nav-afterbegin`     | The beginning of docs navigation, it is always cached according to the first section regardless of its cache configuration. |
| `hb-docs-nav-beforeend`      | The ending of docs navigation, it is always cached according to the first section regardless of its cache configuration.    |
