---
title: "Introduction"
date: 2022-12-14T19:53:42+08:00
draft: false
nav_weight: 1
series:
  - Docs
tags:
  - Introduction
authors:
  - HB
menu:
  footer:
    parent: docs
    weight: 31
    params:
      icon:
        vendor: fas
        name: hands-clapping
---

HB (Hugo Bootstrap) is a modular framework that built on top of [Hugo](https://gohugo.io) and [Bootstrap v5.3.0+](https://getbootstrap.com). HB is not a theme, it's used to build one.

## Motivations

I created and maintain a feature-rich theme - [Hugo Bootstrap Theme](https://hbs.razonyang.com/), but I didn't think about modularity at the beginning of the development, and when developing a new theme, I realized that I couldn't reuse existing features very well. So, I set out to modularize the theme's functionalities, aiming to make theme development easier.

## Features

{{< bootstrap/icon-grid key="en.features" >}}
