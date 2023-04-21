---
title: "模塊概覽"
linkTitle: 概覽
date: 2023-02-04T18:08:09+08:00
draft: false
nav_weight: 1
categories:
  - 模塊
series:
  - 文檔
tags:
  - tidy
  - clean
  - graph
authors:
  - HB
---

本文介紹瞭如何安裝、卸載、升級、清理和整頓模塊。

<!--more-->

## 初始化模塊和主題

要使用 Hugo 模塊，你需要先初始化你的模塊和主題。

{{% code-snippet init %}}

{{< bs/alert >}}
{{% markdownify %}}
`example.com/user/blog` 爲模塊和主題的模塊路徑。
{{% /markdownify %}}
{{< /bs/alert >}}

## 安裝模塊

在你的站點上安裝模塊是很簡單的，只需於配置中導入相應的模塊路徑。以 `example.com/user/module` 爲例。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet install.toml %}}
{{< /bs/config-toggle >}}

安裝完模塊後，你需要重新啓動 Hugo 服務器以完全地加載模塊資源。

## 卸載模塊

要卸載模塊，你需要從配置文件中刪除或註釋模塊，然後執行 `hugo mod tidy`。

{{% code-snippet uninstall %}}

## 升級模塊

遞歸升級所有模塊：

{{% code-snippet upgrade-recursive %}}

更新某個模塊可能的最新版本[^1]：

{{% code-snippet upgrade-latest-version %}}

升級到一個特定的版本[^1]:

{{% code-snippet upgrade-specified-version %}}

[^1]: 版本可以是任何版本、標籤、分支，甚至是提交。

## 整理模塊

以下命令從 `go.mod` 和 `go.sum` 中移除未使用的模塊。

{{% code-snippet tidy %}}

## 清理模塊緩存

刪除當前站點的 Hugo 模塊緩存：

{{% code-snippet clean %}}

## 打印模塊圖表

你也許對網站導入的模塊和它們的依賴關係感興趣：

{{% code-snippet graph %}}
