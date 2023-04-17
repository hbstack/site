---
title: "Deploy on Cloudflare Pages"
linkTitle: "Cloudflare Pages"
date: 2023-03-05T15:13:21+08:00
draft: false
series:
  - Docs
categories:
  - Deployment
tags:
  - Cloudflare Pages
images:
authors:
  - HB
---

In this article, you'll learn how to deploy your site on Cloudflare Pages.

<!--more-->

There are multiple ways to deploy you sites on Cloudflare Pages.

## Deploy Sites via Cloudflare Pages Dashboard

1. Login to Cloudflare Dashboard.
1. Navigate to the _Pages_.
1. Click the _Create a project_ button, and then select the _Connect to Git_ option.
1. Pick up the repository and then _Begin setup_.
1. Fill up the form.
   1. Type the project name, Cloudflare will assign a default domain for your site that shown below the input.
   1. Select the production branch.
   1. Framework preset: Hugo.
   1. Build command: it depends on how you install the build tools, for [starter theme](https://github.com/hbstack/theme): `npm ci && hugo --gc --minify --enableGitInfo`.
   1. Build output directory: `/public`.
   1. Environment variables:
      1. `HUGO_VERSION`: i.e. `0.111.3`.
      1. `NODE_VERSION`: any version large than `16`, e.g `19`.

## Deploy Sites via GitHub Cloudflare Pages Actions

1. Create a site on Cloudflare Pages dashboard, and then disable it's built-in automatic deployments.
1. Create the `CLOUDFLARE_ACCOUNT_ID`[^1] and `CLOUDFLARE_API_TOKEN`[^2] [action's secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets).
1. Create the following workflow, and tweak the configuration as needed.
1. Replace the `projectName` with your site name on Cloudflare Pages.
1. Commit the changes to repo.

{{% bs/collapse ".github/workflows/cloudflare-pages.yaml" primary true %}}
{{% code-snippet workflow.yaml %}}
{{% /bs/collapse %}}

[^1]: Please checkout the [Get account ID](https://github.com/cloudflare/pages-action#get-account-id).
[^2]: See also [Generate an API token](https://github.com/cloudflare/pages-action#generate-an-api-token).
