---
title: "HB - Hugo Bootstrap 框架"
date: 2022-09-24T18:24:31+08:00
draft: false
layout: landing
menu:
  main:
    name: 首页
    weight: 1
    params:
      icon:
        vendor: bootstrap
        name: house
---

{{< hero >}}
{{< hero-img "images/logo.png" >}}
{{< hero-heading "使用 Hugo Bootstrap 框架构建快速响应式的网站" >}}
{{< hero-lead >}}
快速、响应式、灵活的、开源（MIT）、模块化和功能丰富的 Hugo Bootstrap 框架（HB)。
{{< /hero-lead >}}

<div class="mt-3 d-flex align-items-center justify-content-center flex-wrap">
  <a class="btn btn-lg btn-primary fw-semibold mb-2 py-3" href="{{< relref `docs` >}}">
    {{< icons/icon vendor=bootstrap name=book className="me-1" >}} 阅读文档
  </a>
  <a class="btn btn-lg btn-outline-success fw-semibold mb-2 py-3 ms-3" href="{{< relref `docs/modules` >}}">
    {{< icons/icon vendor=bootstrap name=boxes className="me-1" >}} 模块
  </a>
</div>
{{< /hero >}}

{{< sponsors >}}

<h2 class="text-center mb-0">功能特性</h2>

{{< bootstrap/icon-grid "zh-hans.features" >}}
