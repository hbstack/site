---
title: "於 Github Pages 部署站點"
linkTitle: GitHub Pages
date: 2023-04-14T21:15:18+08:00
draft: false
series:
  - 文檔
categories:
  - 部署
tags:
  - GitHub Pages
images:
authors:
  - HB
---

本教程展示如何於 GitHub Pages 部署站點。

<!--more-->

## 爲倉庫啓用 GitHub Pages

1. 點擊 _Settings_ 標籤。
2. 打開 _Pages_.
3. 選擇 _GitHUb Actions_ 作爲 _Source_。
4. 可選：設置自定義域名。

## 創建 GitHub Pages 工作流程

創建以下工作流程，並提交到倉庫。

{{% bs/collapse ".github/workflows/gh-pages.yaml" primary true %}}
{{% code-snippet workflow.yaml %}}
{{% /bs/collapse %}}
