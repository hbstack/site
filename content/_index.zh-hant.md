---
title: "HB - Hugo Bootstrap 框架"
date: 2022-09-24T18:24:31+08:00
draft: false
layout: landing
# menu:
#   main:
#     name: 首頁
#     weight: 1
#     params:
#       icon:
#         vendor: bootstrap
#         name: house
---

{{< hero >}}
{{< hero-img "images/logo.png" >}}
{{< hero-heading "使用 Hugo Bootstrap 框架構建快速響應式的網站" >}}
{{< hero-lead >}}
快速、響應式、靈活的、開源（MIT）、模塊化和功能豐富的 Hugo Bootstrap 框架（HB)。
{{< /hero-lead >}}

<div class="mt-4 d-flex align-items-center justify-content-center flex-wrap">
  <a class="btn btn-lg btn-primary fw-semibold mb-2 py-3 mx-2" href="{{< relref `docs` >}}">
    {{< icons/icon vendor=bootstrap name=book className="me-1" >}} 閱讀文檔
  </a>
  <div class="btn-group btn-group-lg">
    <button type="button" class="btn btn-success dropdown-toggle fw-semibold mb-2 py-3 mx-2" data-bs-toggle="dropdown" aria-expanded="false">
      {{< icons/icon vendor=bootstrap name=arrow-right className="me-1" >}} 快速開始
    </button>
    <ul class="dropdown-menu">
      <li>
        <a class="dropdown-item" href="{{< relref `docs/getting-started/introduction` >}}">
          {{< icons/icon vendor=fas name=hands-clapping className="me-1" >}} 介紹
        </a>
      </li>
      <li>
        <a class="dropdown-item" href="{{< relref `docs/getting-started/prerequisites` >}}">
          {{< icons/icon vendor=bootstrap name=tools className="me-1" >}} 必要條件
        </a>
      </li>
      <li>
        <a class="dropdown-item" href="{{< relref `docs/getting-started/installation` >}}">
          {{< icons/icon vendor=bootstrap name=cloud-download className="me-1" >}} 安裝教程
        </a>
      </li>
    </ul>
  </div>
  <a class="btn btn-lg btn-outline-primary fw-semibold mb-2 py-3 mx-2" href="{{< relref `docs/join-us` >}}">
    {{< icons/icon vendor=fas name=handshake className="me-1" >}} 加入我們
  </a>
  <a class="btn btn-lg btn-outline-danger fw-semibold mb-2 py-3 mx-2" href="{{< relref `thanks` >}}">
    {{< icons/icon vendor=bs name=hearts className="me-1" >}} 致謝
  </a>
</div>
{{< /hero >}}

{{< sponsors >}}

## 功能特性 {#features .text-center .mb-5}

{{< bs/icon-grid  data="zh-hant.features" linkText="" >}}

## 最新文章 {.text-center .mb-5}

{{< bs/article-cards >}}
