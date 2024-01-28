---
title: "What's News in Blog's v0.23.0, v0.24.0 and Related Modules"
description: "The latest changes and new features in Blog v0.23.0 version, v0.24.0 version and other related modules."
date: 2023-12-21T13:42:58+08:00
draft: false
series:
  - News
categories:
  - Modules
tags:
  - Blog
  - Sidebar
  - Taxonomies
  - Posts
images:
authors:
  - HB
aliases:
  - /2023/12/whats-news-in-blogs-v0.23.0-v0.24.0-and-related-modules/
---

## Blog Module

With the [blog module]({{< relref "modules/blog" >}}) `v0.23.0` and `v0.24.0` were being released, the blog layout is becoming much more flexiable, now you're able to:

1. Change the layout: one column (without sidebar), two columns or three columns.
1. Change the sidebar position: left or right.
1. Tweak the sidebar width.
1. Stick the sidebar or not.
1. Change the ToC position: on the left of the content, on right of the content, or above the content.
1. Remove carousel from homepage by setting the corresponding parameter to `0`.
1. Customize the number of posts per row for `md`, `lg` breakpoints.
1. New hooks were added: `hb-blog-post-content-afterbegin` and `hb-blog-post-content-beforeend`.

## Blog Sidebar Posts Module

The [blog sidebar posts module]({{< relref "modules/blog/sidebar/posts" >}})'s `v0.7.0` introduces a new list style called `vertical`.

![Blog sidebar posts module's vertical list style](/images/docs/modules/blog/sidebar/posts/vertical.png#center)

## Blog Sidebar Taxonomies Module

The [blog sidebar taxonomies module]({{< relref "modules/blog/sidebar/taxonomies" >}})'s `v0.4.0` allows separating taxonomies into mutliple sections.

![Blog sidebar taxonomies module's separated sections](/images/docs/modules/blog/sidebar/taxonomies/separated.png#center)
