---
title: "Header Banner Animations"
description: "Apply AOS animations on header banner title and description."
date: 2023-09-02T18:57:06+08:00
draft: false
series:
  - Examples
categories:
  - Banner
tags:
  - AOS
  - Animations
requirements:
  - github.com/hbstack/banner
  - github.com/hugomods/aos
header:
  banner:
    img: /images/banners/black.jpg
    title: |
      Header Banner Animations
      { data-aos="fade-up" }
    description: |
      Apply AOS animations on titles and descriptions to make the page impressive.
      { data-aos="fade-up" data-aos-delay="200" }
---

## Configurations

You'll need to turn on the `markup.goldmark.parser.attribute.block`, to attach attributes on title and description.

> Similarly, you can attach the AOS animations on any content.

{{< bs/config-toggle hugo >}}
markup:
  goldmark:
    parser:
      attribute:
        block: true
        title: true
{{< /bs/config-toggle >}}

{{% example %}}
