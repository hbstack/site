---
title: "HB - Hugo Bootstrap 框架"
description: 
date: 2022-09-24T18:24:31+08:00
draft: false
layout: landing
header:
  banner:
    alignment: center
    img: /images/banners/home.jpg
    title: |
      HB 框架
      { .text-uppercase .mb-5 data-aos="fade-up" }
    description: |
      使用 Hugo 和 Bootstrap 构建**快速**、**现代**、**响应式**和**模块化**的静态网站。
      { .mb-5 data-aos="fade-up" data-aos-delay="200" }

      {{< html/div
        data-aos="fade-up"
        data-aos-delay="300"
        class="d-grid gap-3 d-sm-flex justify-content-sm-center flex-wrap" >}}
        {{< bs/btn-link style=primary size=lg class="py-3" url="/docs" >}}
          {{< icons/icon vendor=bootstrap name=book className="me-1" >}} 阅读文档
        {{< /bs/btn-link >}}
        {{< bs/btn-link style=light size=lg class="py-3" url="/modules" >}}
          {{< icons/icon vendor=bootstrap name=boxes className="me-1" >}} 模块
        {{< /bs/btn-link >}}
        {{< bs/btn-link style=danger size=lg class="py-3" url="/thanks" >}}
          {{< icons/icon vendor=bootstrap name=heart className="me-1" >}} 致谢
        {{< /bs/btn-link >}}
      {{< /html/div >}}
# menu:
#   main:
#     name: 首页
#     weight: 1
#     params:
#       icon:
#         vendor: bootstrap
#         name: house
---

## 赞助商 {#sponsors .text-center .mb-5}

{{< sponsors >}}

## 功能特性 {#features .text-center .mb-5}

{{< bs/icon-grid  data="zh-hans.features" linkText="" >}}

## 最新文章 {.text-center .mb-5}

{{< bs/article-cards >}}
