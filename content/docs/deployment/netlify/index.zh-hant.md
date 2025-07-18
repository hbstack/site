---
title: "於 Netlify 部署站點"
linkTitle: "Netlify"
date: 2023-04-15T10:09:40+08:00
draft: false
series:
  - 文檔
categories:
  - 部署
tags:
  - Netlify
images:
authors:
  - HB
---

這篇文章包含了如何在 Netlify 上部署網站的分步說明。

<!--more-->

可以通過多種方式於 Netlify 部署站點，本文只對基於文件配置的部署方式，其比控制檯設置更靈活。

## 通過基於文件配置部署站點

### 創建 Netlify 配置文件

首先創建以下配置文件，然後提交到你的倉庫。

{{< bs/collapse netlify.toml primary true >}}
```toml {data-max-lines=30}
{{% code-snippet netlify.toml %}}
```
{{< /bs/collapse >}}

> [!NOTE]
> Dart Sass 默認版本為 `-1.79.5`，可通過指定 `DART_SASS_VERSION` 環境變量來修改。

### 新增站點

1. 登錄到 [Netlify](https://www.netlify.com/) 控制檯。
2. 點擊 _Add new site_，然後選擇 `Import an existing project`。
3. 選擇倉庫。
4. 保持表單原樣，因爲我們已於 `netlify.toml` 中配置。
5. 點擊 _Deploy site_ 以發佈站點。

{{< bs/alert warning >}}
當你修改了自定義域名後，你需要重新部署站點。
{{< /bs/alert >}}
