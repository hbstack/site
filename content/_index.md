---
title: "HB - Hugo Bootstrap Framework"
date: 2022-09-24T18:24:31+08:00
draft: false
layout: landing
# menu:
#   main:
#     name: Home
#     weight: 1
#     params:
#       icon:
#         vendor: bootstrap
#         name: house
---

{{< hero >}}
{{< hero-img "images/logo.png" >}}
{{< hero-heading "Build fast, responsive sites with Hugo Bootstrap Framework" >}}
{{< hero-lead >}}
Fast, responsive, flexible, open source (MIT), modular and feature-rich Hugo Bootstrap Framework (HB).
{{< /hero-lead >}}

<div class="mt-3 d-flex align-items-center justify-content-center flex-wrap">
  <a class="btn btn-lg btn-primary fw-semibold mb-2 py-3" href="{{< relref `docs` >}}">
    {{< icons/icon vendor=bootstrap name=book className="me-1" >}} Read the docs
  </a>
  <div class="btn-group btn-group-lg">
    <button type="button" class="btn btn-success dropdown-toggle fw-semibold mb-2 py-3 ms-3" data-bs-toggle="dropdown" aria-expanded="false">
      {{< icons/icon vendor=bootstrap name=arrow-right className="me-1" >}} Getting Started
    </button>
    <ul class="dropdown-menu">
      <li>
        <a class="dropdown-item" href="{{< relref `docs/getting-started/introduction` >}}">
          {{< icons/icon vendor=fas name=hands-clapping className="me-1" >}} Introduction
        </a>
      </li>
      <li>
        <a class="dropdown-item" href="{{< relref `docs/getting-started/prerequisites` >}}">
          {{< icons/icon vendor=bootstrap name=tools className="me-1" >}} Prerequisites
        </a>
      </li>
      <li>
        <a class="dropdown-item" href="{{< relref `docs/getting-started/installation` >}}">
          {{< icons/icon vendor=bootstrap name=cloud-download className="me-1" >}} Installation
        </a>
      </li>
    </ul>
  </div>
</div>
{{< /hero >}}

{{< sponsors >}}

## Features {#features .text-center .mb-5}

{{< bs/icon-grid "en.features" >}}
