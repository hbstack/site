---
title: "爲 Hugo 站點創建 Docker 鏡像"
linkTitle: Docker 鏡像
date: 2023-04-14T21:22:22+08:00
draft: false
series:
  - 文檔
categories:
  - 部署
tags:
  - Docker
images:
authors:
  - HB
---

本文描述瞭如何爲 Hugo 站點創建 Docker 鏡像，以便推送到容器註冊中心，並部署於自搭建服務器、Docker Swarm 或 k8s 集羣等。

<!--more-->

## 原理

該例子使用 Nginx 作爲 Web 服務器，爲 Hugo 生成的靜態文件提供服務。

## 創建 Dockerfile

創建 `Dockerfile` 並按需調整，比如回退的 404 頁面。

{{< bs/collapse "Dockerfile" primary true >}}
{{% code-snippet dockerfile %}}
{{< /bs/collapse >}}

## 測試 Dockerfile

{{% code-snippet test %}}

現在你可以通過 `https://localhost:8080` 測試 Dockerfile。

## 構建 Docker 鏡像

{{% code-snippet build %}}
