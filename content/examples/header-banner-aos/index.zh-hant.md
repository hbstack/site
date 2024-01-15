---
title: "頁頭橫幅動畫"
description: "於頁頭橫幅標題和描述上應用 AOS 動畫。"
date: 2023-09-02T18:57:06+08:00
draft: false
series:
  - 示例
categories:
  - 橫幅
tags:
  - AOS
  - 動畫
requirements:
  - github.com/hbstack/header/modules/banner
  - github.com/hugomods/aos
header:
  banner:
    img: /images/banners/black.jpg
    title: |
      頁頭橫幅動畫
      { data-aos="fade-up" }
    description: |
      於頁頭橫幅標題和描述上應用 AOS 動畫，使頁面給人留下深刻印象。
      { data-aos="fade-up" data-aos-delay="200" }
---

## 配置

你需要開啓 `markup.goldmark.parser.attribute.block` 以於標題和描述上添加屬性。

> 類似地，你可以於任意內容添加屬性。

{{< bs/config-toggle hugo >}}
markup:
  goldmark:
    parser:
      attribute:
        block: true
        title: true
{{< /bs/config-toggle >}}

{{% example %}}
