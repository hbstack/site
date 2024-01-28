---
title: "替換元模塊"
description: 如何替換元模塊。
date: 2023-10-10T22:44:37+08:00
draft: false
series:
  - 教程
categories:
  - 模塊
tags:
  - 元模塊
images:
authors:
  - HB
aliases:
  - /2023/10/replace-meta-modules
---

## 背景

起初，爲了方便新手快速入門和熟悉 HB 框架的主題，我們提供了一些[元模塊]({{< relref "modules/meta" >}})，其只是模塊的集合，本身並不提供任何功能。

但目前元模塊有着一個明顯的缺點，就是很難從中移除不需要的模塊。因此在本教程中，我們將談及如何從元模塊中移除模塊。

## 解決方案

爲此，我們需要知道元模塊導入了哪些模塊，然後將其導入的模塊__依次__地重新導入，並將不需要的模塊去除，最後將元模塊移除即可。

{{< bs/alert danger >}}
導入模塊的順序非常重要，其優先級從上至下，如果你不喜歡這樣，只需保持與元模塊定義的順序相同即可。
{{< /bs/alert >}}

假設網站導入了 [github.com/hbstack/meta/recommended](https://github.com/hbstack/meta/blob/main/recommended/hugo.toml) 元模塊。

```toml
[[module.imports]]
path = "github.com/hbstack/meta/recommended"
```

首先，將元模塊依次替換爲其導入的模塊。

{{< emgithub
  owner=hbstack
  repo=meta
  file="recommended/hugo.toml"
  type=code
>}}

然後移除或替換不需要的模塊，例如，你可能想將開源項目文檔網站的 `github.com/hbstack/header/modules/search` 替換爲 `github.com/hbstack/header/modules/docsearch`。

{{< bs/alert >}}
對於以 YAML 或 JSON 編寫的其他配置，你需要先將其轉換爲相應的語言。
{{< /bs/alert >}}
