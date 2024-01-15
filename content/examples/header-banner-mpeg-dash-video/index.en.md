---
title: "MPEG DASH Video Banner"
description: The example of showing a MPEG DASH video on the banner.
date: 2023-09-01T10:57:18+08:00
draft: false
video_js: true
series:
  - Examples
categories:
  - Banner
tags:
  - Videos
  - MPEG-DASH
  - MPD
images:
  - https://customer-m033z5x00ks6nunl.cloudflarestream.com/b236bde30eb07b9d01318940e5fc3eda/thumbnails/thumbnail.jpg
header:
  banner:
    alignment: end
    title: false
    description: false
    video:
      poster: https://customer-m033z5x00ks6nunl.cloudflarestream.com/b236bde30eb07b9d01318940e5fc3eda/thumbnails/thumbnail.jpg
      src: https://customer-m033z5x00ks6nunl.cloudflarestream.com/b236bde30eb07b9d01318940e5fc3eda/manifest/video.mpd
      type: application/dash+xml
requirements:
  - github.com/hbstack/header/modules/banner
example_params:
  - video_js
---

{{% example %}}
