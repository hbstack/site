---
title: Blog
date: 2023-02-26T18:24:31+08:00
draft: false
summary: Blog home page example.
layout: blog
menu:
  main:
    identifier: blog
    weight: 3
    params:
      icon: 
        vendor: font-awesome-solid
        name: blog
---

<div class="row">
  <div class="col-12 col-lg-6">
    {{< hb/carousel params.featured=true >}}
  </div>
  <div class="col-12 col-lg-6">
    {{< hb/blog/posts params.pinned=true limit=2 cols="row-cols-2" >}}
  </div>
</div>

<div class="row">
  <div class="col-12 col-lg-8">
    {{< hb/blog/posts sorting="Date desc" limit=12 cols="row-cols-1 row-cols-xl-2" >}}
  </div>
  <div class="col-12 col-lg-4">
    {{< hb/blog/taxonomies limit=20 >}}
  </div>
</div>
