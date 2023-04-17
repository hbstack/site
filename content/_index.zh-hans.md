---
title: "HB - Hugo Bootstrap 框架"
date: 2022-09-24T18:24:31+08:00
draft: false
layout: landing
# menu:
#   main:
#     name: 首页
#     weight: 1
#     params:
#       icon:
#         vendor: bootstrap
#         name: house
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
  <div class="btn-group btn-group-lg">
    <button type="button" class="btn btn-success dropdown-toggle fw-semibold mb-2 py-3 ms-1 ms-md-3" data-bs-toggle="dropdown" aria-expanded="false">
      {{< icons/icon vendor=bootstrap name=arrow-right className="me-1" >}} 快速开始
    </button>
    <ul class="dropdown-menu">
      <li>
        <a class="dropdown-item" href="{{< relref `docs/getting-started/introduction` >}}">
          {{< icons/icon vendor=fas name=hands-clapping className="me-1" >}} 介绍
        </a>
      </li>
      <li>
        <a class="dropdown-item" href="{{< relref `docs/getting-started/prerequisites` >}}">
          {{< icons/icon vendor=bootstrap name=tools className="me-1" >}} 必要条件
        </a>
      </li>
      <li>
        <a class="dropdown-item" href="{{< relref `docs/getting-started/installation` >}}">
          {{< icons/icon vendor=bootstrap name=cloud-download className="me-1" >}} 安装教程
        </a>
      </li>
    </ul>
  </div>
</div>
{{< /hero >}}

{{< sponsors >}}

## 功能特性 {#features .text-center .mb-5}

{{< bs/icon-grid "zh-hans.features" >}}
