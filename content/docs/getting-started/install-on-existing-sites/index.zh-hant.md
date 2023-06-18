---
title: "安裝到已有站點"
linkTitle: "安裝到已有站點"
date: 2023-06-18T10:49:47+08:00
series:
  - 文檔
categories:
  - 安裝
tags:
images:
authors:
  - HB
---

本文介紹如何安裝 HB 和模塊到已有站點。

<!--more-->

## 初始化 Hugo 模塊

{{< bs/alert >}}
{{% markdownify %}}
如果站點目錄有 `go.mod`，則跳過本步驟，因爲你已經初始化過模塊了。
{{% /markdownify %}}
{{< /bs/alert >}}

我們需要初始化站點，使其作爲一個模塊，以使用 Hugo 模塊。請將 `github.com/user/repo` 替換爲你的。

{{% code-snippet initialize-module %}}

## 安裝構建工具

HB 要求安裝一些[構建工具]({{< relref "docs/getting-started/prerequisites#build-tools" >}})。

## 調整配置

本教程使用[推薦的元模塊]({{< relref "modules/meta#recommended-meta-module" >}})作爲使用 HB 的起點，你可以在[模塊]({{< relref "modules" >}})頁面找到更多可用的模塊。

1. 如果存在 `theme`，則刪除。
1. 確保設置了以下必要的配置。

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

### 更改 PWA 緩存策略

爲了避免本地環境的緩存問題，建議更改 PWA 緩存策略。

{{< bs/config-toggle "config/development/params" >}}
{{% code-snippet pwa.yaml %}}
{{< /bs/config-toggle >}}

## 預覽和調整

現在你應該可以啓動 Hugo 服務器以預覽，以及調整模塊。

## 問題排查

導致構建失敗的原因有很多。

- 缺少之前主題的短代碼。
- 與之前的配置和參數衝突。
- 更多請參閱[問題排查]({{< relref "docs/troubleshooting" >}})頁面。

如果你不知道如何解決，請隨意[提問](https://github.com/orgs/hbstack/discussions/new?category=q-a)。
