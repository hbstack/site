---
title: "HB - Hugo Bootstrap Framework"
date: 2022-09-24T18:24:31+08:00
draft: false
layout: landing
menu:
  main:
    name: Home
    weight: 1
    params:
      icon:
        vendor: bootstrap
        name: house
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
  <a class="btn btn-lg btn-outline-success fw-semibold mb-2 py-3 ms-3" href="{{< relref `docs/modules` >}}">
    {{< icons/icon vendor=bootstrap name=boxes className="me-1" >}} Modules
  </a>
</div>
{{< /hero >}}

{{< sponsors >}}

<h2 class="text-center mb-0">Features</h2>

{{< bootstrap/icon-grid key="en.features" >}}
