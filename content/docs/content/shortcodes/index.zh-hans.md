---
title: "短代码"
linkTitle: "短代码"
date: 2023-04-11
nav_weight: 4
# nav_icon:
#   vendor: bs
#   name: code
#   color: '#ff4088'
series:
  - 文档
categories:
  - 短代码
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
  - 哔哩哔哩
  - 网易云音乐
  - 优酷
  - Mermaid
  - KaTex
  - 图片链接
  - 图标
alias:
  - /zh-hans/docs/shortcodes/
  - /zh-hans/docs/diagrams/
  - /zh-hans/docs/math/
---

本文将简单地介绍如何利用短代码来丰富你的内容，并列出一些可用的短代码。

## Hugo 内置短代码

- [Figure](https://gohugo.io/content-management/shortcodes/#figure)： 是 Markdown 中图像语法的延伸。
- [Gist](https://gohugo.io/content-management/shortcodes/#gist)：显示 GitHub gist 代码。
- [Highlight](https://gohugo.io/content-management/shortcodes/#highlight)：显示高亮代码。
- [Instagram](https://gohugo.io/content-management/shortcodes/#instagram)：显示一篇 Instagram 帖子。
- [Param](https://gohugo.io/content-management/shortcodes/#param)：获取当前页面的参数，如无则回退到网站参数。
- [`ref` and `relref`](https://gohugo.io/content-management/shortcodes/#ref-and-relref)：返回指定页面的固定链接（`ref`）或相对固定链接（`relref`）。
- [Tweet](https://gohugo.io/content-management/shortcodes/#tweet)：显示 Twitter 推文。
- [Vimeo](https://gohugo.io/content-management/shortcodes/#vimeo)：显示 Vimeo 视频。
- [YouTube](https://gohugo.io/content-management/shortcodes/#youtube)：显示 YouTube 视频。

## Bootstrap 短代码

{{% module "github.com/hugomods/bootstrap" %}}

Bootstrap 短代码列表。

* [Alert](https://hugomods.com/en/bootstrap/alert/)：显示警告信息，支持多种样式、图标和标题。
* [Clearfix](https://hugomods.com/en/bootstrap/clearfix/)：清除浮动的内容，如浮动图片。
* [Collapse](https://hugomods.com/en/bootstrap/collapse/)：隐藏和显示内容。
* [Config Toggle](https://hugomods.com/en//bootstrap/config-toggle/)：从一个代码库中生成一个配置切换，支持 `YAML`、`TOML` 和 `JSON`。
* [Icon Grid](https://hugomods.com/en/bootstrap/icon-grid/)：显示带有图标、标题和描述的 icon grid。
* [Lead](https://hugomods.com/en/bootstrap/lead/)：使一个段落脱颖而出。
* [Ratio](https://hugomods.com/en/bootstrap/ratio/)：完美的响应式处理视频或幻灯片的嵌入，基于父体的宽度。
* [Toggle](https://hugomods.com/en/bootstrap/toggle/)：比 config toggle 更加通用，设计用于任何内容，如 SDK 代码。

## 扩展的短代码

{{% module "github.com/hugomods/shortcodes" %}}

扩展的短代码列表。

### 线上代码编辑器

- [CodePen](https://hugomods.com/en/docs/shortcodes/codepen/)：显示 CodePen 代码。
- [JSFiddle](https://hugomods.com/en/docs/shortcodes/jsfiddle/)：显示 JSFiddle 代码。
- [JSRun](https://hugomods.com/en/docs/shortcodes/jsrun/)：显示 JSRun 代码。

### 媒体播放器

- [Asciinema](https://hugomods.com/en/docs/shortcodes/asciinema/)：显示 asciinema 视频。
- [Bilibili](https://hugomods.com/en/docs/shortcodes/bilibili/)：显示哔哩哔哩视频。
- [NetEase Cloud Music](https://hugomods.com/en/docs/shortcodes/netease-cloud-music/)：显示网易云音乐播放器。
- [YouKu](https://hugomods.com/en/docs/shortcodes/youku/)：显示优酷视频。

## 由模块提供的短代码

你可能需要安装相应的模块来使用以下短代码。

- [图标](https://hugomods.com/en/docs/icons/#use-icons-via-shortcode)：显示图标。
- [图片链接]({{< relref "docs/modules/bigger-picture#shortcode" >}})：当点击图片链接时弹出一个图片。
- [KaTex](https://hugomods.com/en/docs/content/katex#usage)：数学排版。
- [Mermaid]({{< relref "docs/modules/mermaid#usages" >}})：使用受 Markdown 启发的文本定义和一个渲染器来创建和修改复杂的图表。
