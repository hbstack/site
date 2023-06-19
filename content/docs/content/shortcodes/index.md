---
title: "Shortcodes"
linkTitle: "Shortcodes"
date: 2023-04-11
nav_weight: 4
# nav_icon:
#   vendor: bs
#   name: code
#   color: '#ff4088'
series:
  - Docs
categories:
  - Shortcode
tags:
  - Figure
  - Gist
  - Highlight
  - Instagram
  - Param
  - ref
  - relref
  - Tweet
  - Vimeo
  - YouTube
  - Bootstrap
  - Alert
  - Clearfix
  - Config Toggle
  - Lead
  - Ratio
  - Toggle
  - CodePen
  - JSRun
  - asciinema
  - Bilibili
  - NetEase Could Music
  - YouKu
  - Mermaid
  - KaTex
  - Image Link
  - Icon
aliases:
  - /en/docs/shortcodes/
  - /en/docs/diagrams/
  - /en/docs/math/
---

This article will briefly describe how to use shortcodes to enrich your content and list some of the available shortcodes.

## Using Shortcodes

Learn more on [use shortcodes](https://gohugo.io/content-management/shortcodes/#use-shortcodes).

## Hugo Built-in Shortcodes

- [Figure](https://gohugo.io/content-management/shortcodes/#figure): an extension of the image syntax in Markdown.
- [Gist](https://gohugo.io/content-management/shortcodes/#gist): to display a GitHub gist.
- [Highlight](https://gohugo.io/content-management/shortcodes/#highlight): to display a highlighted code.
- [Instagram](https://gohugo.io/content-management/shortcodes/#instagram): to display an Instagram post.
- [Param](https://gohugo.io/content-management/shortcodes/#param): gets a value from the current Page's params set in front matter, with a fallback to the site param value.
- [`ref` and `relref`](https://gohugo.io/content-management/shortcodes/#ref-and-relref): return the permalink (`ref`) or relative permalink (`relref`) for the given page.
- [Tweet](https://gohugo.io/content-management/shortcodes/#tweet): to display a Twitter post.
- [Vimeo](https://gohugo.io/content-management/shortcodes/#vimeo): to display a Vimeo video.
- [YouTube](https://gohugo.io/content-management/shortcodes/#youtube): to display a YouTube video.

## Bootstrap Shortcodes

{{% module "github.com/hugomods/bootstrap" %}}

A list of Bootstrap shortcodes.

* [Alert](https://hugomods.com/en/bootstrap/alert/): generate alert messages, supports styling, icon and heading.
* [Clearfix](https://hugomods.com/en/bootstrap/clearfix/): clear floated content, such as floating pictures.
* [Collapse](https://hugomods.com/en/bootstrap/collapse/): hide and show content.
* [Config Toggle](https://hugomods.com/en/bootstrap/config-toggle/): generate a configuration toggle from one code base, `YAML`, `TOML` and `JSON` are supported.
* [Icon Grid](https://hugomods.com/en/bootstrap/icon-grid/): display a icon grid with icon, heading and description.
* [Lead](https://hugomods.com/en/bootstrap/lead/): make a paragraph stand out.
* [Ratio](https://hugomods.com/en/bootstrap/ratio/): perfect for responsively handling video or slideshow embeds based on the width of the parent.
* [Toggle](https://hugomods.com/en/bootstrap/toggle/): much more versatile than config toggle, designed for any content, such as SDK codes.

## Extended Shortcodes

{{% module "github.com/hugomods/shortcodes" %}}

The list of extended shortcodes.

### Code Playground

- [CodePen](https://hugomods.com/en/docs/shortcodes/codepen/): to display CodePen code.
- [JSFiddle](https://hugomods.com/en/docs/shortcodes/jsfiddle/): to display JSFiddle code.
- [JSRun](https://hugomods.com/en/docs/shortcodes/jsrun/): to display JSRun code.

### Media Player

- [Asciinema](https://hugomods.com/en/docs/shortcodes/asciinema/): to display asciinema video.
- [Bilibili](https://hugomods.com/en/docs/shortcodes/bilibili/): to display a Bilibili video.
- [NetEase Cloud Music](https://hugomods.com/en/docs/shortcodes/netease-cloud-music/): to display NetEase cloud music player.
- [YouKu](https://hugomods.com/en/docs/shortcodes/youku/): to display a YouKu video.

## Shortcodes Provided by Modules

You may need to install the corresponding modules to use the following shortcodes.

- [Encrypt](https://hugomods.com/en/docs/content/encrypt/): encrypt contents.
- [Icon](https://hugomods.com/en/docs/icons/#use-icons-via-shortcode): display a icon.
- [Image Link]({{< relref "modules/enhancement/bigger-picture#image-link-shortcode" >}}): pop up an image when click the image link.
- [KaTex](https://hugomods.com/en/docs/content/katex#usage): math typesetting.
- [Mermaid]({{< relref "modules/content/mermaid#usages" >}}): uses Markdown-inspired text definitions and a renderer to create and modify complex diagrams.
