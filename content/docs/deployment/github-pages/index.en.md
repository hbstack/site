---
title: "Deploy Site on Github Pages"
linkTitle: GitHub Pages
date: 2023-04-14T21:15:18+08:00
draft: false
series:
  - Docs
categories:
  - Deployment
tags:
  - GitHub Pages
images:
authors:
  - HB
---

This guide shows how to deploy your site on GitHub Pages via GitHub Actions.

<!--more-->

## Enable GitHub Pages on Repo

1. Click to _Settings_ tab.
2. Navigate to _Pages_.
3. Pick the _GitHUb Actions_ as _Source_.
4. Optional: setup the custom domain.

## Create GitHub Pages Workflow

Create the following workflow and commit it to repo.

{{< bs/collapse ".github/workflows/gh-pages.yaml" primary true >}}
{{% code-snippet workflow.yaml %}}
{{< /bs/collapse >}}
