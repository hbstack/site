---
type: docs
title: "頁頭谷歌自定義搜索引擎模塊"
linkTitle: "谷歌自定義搜索引擎"
description: 於頁頭添加谷歌自定義搜索引擎。
date: 2023-10-12T20:11:15+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: simple
  name: google
series:
  - 模塊
categories:
  - 頁頭
tags:
  - 谷歌
  - 搜索
  - GCSE
images:
authors:
  - HB
---

{{% hb-module "header/modules/gcse" %}}

## 站點參數

{{< bs/config-toggle hugo >}}
{{< file-content "data/config.yaml" >}}
{{< /bs/config-toggle >}}

{{% parameters params.yaml %}}

## GCSE 模式

共有三種顯示谷歌自定義搜索引擎的模式。

### Offcanvas

如封面所示，搜索頁面將顯示於頁面右側的 Offcanvas 面板上。你需要將 `layout` 參數指定爲 `offcanvas` 以啓用該模式。

### 單頁模式

如果未曾設置 `layout`，那麼模塊將會尋找單個搜索頁面，而該模塊提供了兩種佈局以創建 GCSE 頁面：

- `gcse`：將 GCSE 嵌入站點，共用站點的佈局和樣式。
- `gcse-standalone`：獨立於站點的 GCSE 頁面。

你需要於頁面前言指定 `layout` 爲 `gcse` 和 `gcse-standalone` 其一，以 `content/search/_index.md` 爲例。

```markdown
---
title: Search
layout: gcse
---
```

### Google 託管

當點擊搜索按鈕時，該模式打開新標籤，並導航至 Google 託管的頁面。

## 延伸閱讀

- [替換元模塊]({{< relref "blog/replace-meta-modules" >}})：替換內置的客戶端搜索模塊。
