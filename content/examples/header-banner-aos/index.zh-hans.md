---
title: "页头横幅动画"
description: "于页头横幅标题和描述上应用 AOS 动画。"
date: 2023-09-02T18:57:06+08:00
draft: false
series:
  - 示例
categories:
  - 横幅
tags:
  - AOS
  - 动画
requirements:
  - github.com/hbstack/header/modules/banner
  - github.com/hugomods/aos
header:
  banner:
    img: /images/banners/black.jpg
    title: |
      页头横幅动画
      { data-aos="fade-up" }
    description: |
      于页头横幅标题和描述上应用 AOS 动画，使页面给人留下深刻印象。
      { data-aos="fade-up" data-aos-delay="200" }
---

## 配置

你需要开启 `markup.goldmark.parser.attribute.block` 以于标题和描述上添加属性。

> 类似地，你可以于任意内容添加属性。

{{< bs/config-toggle hugo >}}
markup:
  goldmark:
    parser:
      attribute:
        block: true
        title: true
{{< /bs/config-toggle >}}

{{% example %}}
