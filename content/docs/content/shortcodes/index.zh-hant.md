---
title: "短代碼"
linkTitle: "短代碼"
date: 2023-04-11
nav_weight: 4
# nav_icon:
#   vendor: bs
#   name: code
#   color: '#ff4088'
series:
  - 文檔
categories:
  - 短代碼
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
  - 嗶哩嗶哩
  - 網易雲音樂
  - 優酷
  - Mermaid
  - KaTex
  - 圖片鏈接
  - 圖標
alias:
  - /zh-hans/docs/shortcodes/
  - /zh-hans/docs/diagrams/
  - /zh-hans/docs/math/
---

本文將簡單地介紹如何利用短代碼來豐富你的內容，並列出一些可用的短代碼。

## 使用短代碼

另請參閱 [use shortcodes](https://gohugo.io/content-management/shortcodes/#use-shortcodes)。

## Hugo 內置短代碼

- [Figure](https://gohugo.io/content-management/shortcodes/#figure)： 是 Markdown 中圖像語法的延伸。
- [Gist](https://gohugo.io/content-management/shortcodes/#gist)：顯示 GitHub gist 代碼。
- [Highlight](https://gohugo.io/content-management/shortcodes/#highlight)：顯示高亮代碼。
- [Instagram](https://gohugo.io/content-management/shortcodes/#instagram)：顯示一篇 Instagram 帖子。
- [Param](https://gohugo.io/content-management/shortcodes/#param)：獲取當前頁面的參數，如無則回退到網站參數。
- [`ref` and `relref`](https://gohugo.io/content-management/shortcodes/#ref-and-relref)：返回指定頁面的固定鏈接（`ref`）或相對固定鏈接（`relref`）。
- [Tweet](https://gohugo.io/content-management/shortcodes/#tweet)：顯示 Twitter 推文。
- [Vimeo](https://gohugo.io/content-management/shortcodes/#vimeo)：顯示 Vimeo 視頻。
- [YouTube](https://gohugo.io/content-management/shortcodes/#youtube)：顯示 YouTube 視頻。

## Bootstrap 短代碼

{{% module "github.com/hugomods/bootstrap" %}}

Bootstrap 短代碼列表。

* [Alert](https://hugomods.com/en/bootstrap/alert/)：顯示警告信息，支持多種樣式、圖標和標題。
* [Clearfix](https://hugomods.com/en/bootstrap/clearfix/)：清除浮動的內容，如浮動圖片。
* [Collapse](https://hugomods.com/en/bootstrap/collapse/)：隱藏和顯示內容。
* [Config Toggle](https://hugomods.com/en//bootstrap/config-toggle/)：從一個代碼庫中生成一個配置切換，支持 `YAML`、`TOML` 和 `JSON`。
* [Icon Grid](https://hugomods.com/en/bootstrap/icon-grid/)：顯示帶有圖標、標題和描述的 icon grid。
* [Lead](https://hugomods.com/en/bootstrap/lead/)：使一個段落脫穎而出。
* [Ratio](https://hugomods.com/en/bootstrap/ratio/)：完美的響應式處理視頻或幻燈片的嵌入，基於父體的寬度。
* [Toggle](https://hugomods.com/en/bootstrap/toggle/)：比 config toggle 更加通用，設計用於任何內容，如 SDK 代碼。

## 擴展的短代碼

{{% module "github.com/hugomods/shortcodes" %}}

擴展的短代碼列表。

### 線上代碼編輯器

- [CodePen](https://hugomods.com/en/docs/shortcodes/codepen/)：顯示 CodePen 代碼。
- [JSFiddle](https://hugomods.com/en/docs/shortcodes/jsfiddle/)：顯示 JSFiddle 代碼。
- [JSRun](https://hugomods.com/en/docs/shortcodes/jsrun/)：顯示 JSRun 代碼。

### 媒體播放器

- [Asciinema](https://hugomods.com/en/docs/shortcodes/asciinema/)：顯示 asciinema 視頻。
- [Bilibili](https://hugomods.com/en/docs/shortcodes/bilibili/)：顯示嗶哩嗶哩視頻。
- [NetEase Cloud Music](https://hugomods.com/en/docs/shortcodes/netease-cloud-music/)：顯示網易雲音樂播放器。
- [YouKu](https://hugomods.com/en/docs/shortcodes/youku/)：顯示優酷視頻。

## 由模塊提供的短代碼

你可能需要安裝相應的模塊來使用以下短代碼。

- [圖標](https://hugomods.com/en/docs/icons/#use-icons-via-shortcode)：顯示圖標。
- [圖片鏈接]({{< relref "docs/modules/bigger-picture#shortcode" >}})：當點擊圖片鏈接時彈出一個圖片。
- [KaTex](https://hugomods.com/en/docs/content/katex#usage)：數學排版。
- [Mermaid]({{< relref "docs/modules/mermaid#usages" >}})：使用受 Markdown 啓發的文本定義和一個渲染器來創建和修改複雜的圖表。
