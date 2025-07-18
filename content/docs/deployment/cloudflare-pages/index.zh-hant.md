---
title: "於 Cloudflare Pages 部署站點"
linkTitle: Cloudflare Pages
date: 2023-03-05T15:13:21+08:00
draft: false
series:
  - 文檔
categories:
  - 部署
tags:
  - Cloudflare Pages
images:
authors:
  - HB
---

通過本文，你將學習到如何 Cloudflare Pages 上部署站點。

<!--more-->

有多種方式將站點部署到 Cloudflare Pages.

## 通過 Cloudflare Pages 管理面板部署站點

1. 登錄到 Cloudflare 管理面板。
1. 打開 _Pages_ 頁面。
1. 點擊 _Create a project_ 按鈕，然後選擇 _Connect to Git_.
1. 選擇倉庫並點擊 _Begin setup_。
1. 填寫表單。
   1. 輸入項目名稱，Cloudflare 會給站點分配一個默認域名，顯示在輸入框下方。
   1. 選擇生產分支。
   1. 框架預設置：Hugo。
   1. 構建命令：其取決於你如何安裝構建工具，對於[新手主題](https://github.com/hbstack/theme)：`npm ci && hugo --gc --minify --enableGitInfo`。
   1. 構建輸出目錄：`/public`。
   1. **確保 `Build system version` 為 `2`，否則無法安裝 Dart Sass。**
   1. 環境變量：
      1. `HUGO_VERSION`：比如 `0.111.3`。
      1. `NODE_VERSION`：任意大於 `16` 的版本，如：`19`。
      1. `EMBEDDED_DART_SASS_VERSION`：Embedded Dart Sass，如：`1.62.1`。

## 通過 GitHub Cloudflare Pages Actions 部署站點

1. 通過 Cloudflare Pages 管理面板 創建站點，並關閉其自帶的自動部署。
1. 創建 `CLOUDFLARE_ACCOUNT_ID`[^1] 和 `CLOUDFLARE_API_TOKEN`[^2] [action's secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)。
1. 創建以下工作流程，並按需修改配置。
1. 將 `projectName` 替換爲你的站點名稱。

{{< bs/collapse ".github/workflows/cloudflare-pages.yaml" primary true >}}
{{% code-snippet workflow.yaml %}}
{{< /bs/collapse >}}

[^1]: 詳情請參閱 [Get account ID](https://github.com/cloudflare/pages-action#get-account-id)。
[^2]: 另請參閱 [Generate an API token](https://github.com/cloudflare/pages-action#generate-an-api-token)。
