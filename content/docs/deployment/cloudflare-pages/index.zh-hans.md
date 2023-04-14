---
title: "于 Cloudflare Pages 部署站点"
linkTitle: Cloudflare Pages
date: 2023-03-05T15:13:21+08:00
draft: false
series:
  - 文档
categories:
  - 部署
tags:
  - Cloudflare Pages
images:
authors:
  - HB
---

通过本文，你将学习到如何 Cloudflare Pages 上部署站点。

<!--more-->

有多种方式将站点部署到 Cloudflare Pages.

## 通过 Cloudflare Pages 管理面板部署站点

1. 登录到 Cloudflare 管理面板。
1. 打开 _Pages_ 页面。
1. 点击 _Create a project_ 按钮，然后选择 _Connect to Git_.
1. 选择仓库并点击 _Begin setup_。
1. 填写表单。
   1. 输入项目名称，Cloudflare 会给站点分配一个默认域名，显示在输入框下方。
   1. 选择生产分支。
   1. 框架预设置：Hugo。
   1. 构建命令：其取决于你如何安装构建工具，对于[新手主题](https://github.com/hbstack/theme)：`npm ci && hugo --gc --minify --enableGitInfo`。
   1. 构建输出目录：`/public`。
   1. 环境变量：
      1. `HUGO_VERSION`：比如 `0.111.3`。
      1. `NODE_VERSION`：任意大于 `16` 的版本。

## 通过 GitHub Cloudflare Pages Actions 部署站点

1. 通过 Cloudflare Pages 管理面板 创建站点，并关闭其自带的自动部署。
1. 创建 `CLOUDFLARE_ACCOUNT_ID`[^1] 和 `CLOUDFLARE_API_TOKEN`[^2] [action's secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)。
1. 创建以下工作流程，并按需修改配置。
1. 将 `projectName` 替换为你的站点名称。

{{% bs/collapse ".github/workflows/cloudflare-pages.yaml" primary true %}}
{{% code-snippet workflow.yaml %}}
{{% /bs/collapse %}}

[^1]: 详情请参阅 [Get account ID](https://github.com/cloudflare/pages-action#get-account-id)。
[^2]: 另请参阅 [Generate an API token](https://github.com/cloudflare/pages-action#generate-an-api-token)。
