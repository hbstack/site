---
type: docs
title: "公告欄"
linkTitle: "公告欄"
date: 2023-06-11T18:36:36+08:00
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - 模塊
categories:
tags:
  - 公告欄
images:
authors:
  - HB
---

公告欄模塊突出一些重要的事情，比如新聞和項目的新版本。

<!--more-->

{{% hb-module announcement-bar %}}

## 站點參數

| Parameter      |  Type  | Default | Description              |
| -------------- | :----: | :-----: | ------------------------ |
| `bg`           | string | primary | 背景顏色。               |
| ~~`color`~~    | string | `#fff`  | 文本顏色。               |
| ~~`interval`~~ | number | `5000`  | 公告的間隔，單位：毫秒。 |

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

## 公告數據文件

該模塊被設計爲兼容單語言和多語言站點，你需要於 `data/announcements` 目錄下爲每個語言站點創建公告數據文件。

{{% code-snippet structure %}}

如 `tree` 的結果所示，我們爲 `en`、`zh-hans` 和 `zh-hant` 站點定義了公告數據文件。

### 公告屬性

| Property |  Type  | Default | Required | Description                    |
| -------- | :----: | :-----: | :------: | ------------------------------ |
| `title`  | string |    -    |    Y     | 公告標題，支持 Markdown 語法。 |
| `weight` | number |    -    |    N     | 值越小優先級越高。             |

### 公告例子

{{% bs/config-toggle "data/announcements/en" %}}
{{% code-snippet example.toml %}}
{{% /bs/config-toggle %}}
