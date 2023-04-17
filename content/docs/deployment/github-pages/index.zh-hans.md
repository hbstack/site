---
title: "于 Github Pages 部署站点"
linkTitle: GitHub Pages
date: 2023-04-14T21:15:18+08:00
draft: false
series:
  - 文档
categories:
  - 部署
tags:
  - GitHub Pages
images:
authors:
  - HB
---

本教程展示如何于 GitHub Pages 部署站点。

<!--more-->

## 为仓库启用 GitHub Pages

1. 点击 _Settings_ 标签。
2. 打开 _Pages_.
3. 选择 _GitHUb Actions_ 作为 _Source_。
4. 可选：设置自定义域名。

## 创建 GitHub Pages 工作流程

创建以下工作流程，并提交到仓库。

{{% bs/collapse ".github/workflows/gh-pages.yaml" primary true %}}
{{% code-snippet workflow.yaml %}}
{{% /bs/collapse %}}
