---
type: docs
aliases:
  - /zh-hant/docs/develop/module/
title: "模塊指南"
date: 2023-02-16T14:08:34+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: boxes
  className: text-primary
series:
  - 文檔
categories:
  - 開發
tags:
  - 文檔
  - SCSS
  - Hooks
  - TypeScript
  - JavaScript
  - CSS
images:
authors:
  - HB
---

想要創建和分享你的創意 HB 模塊嗎？這裏有你想要知道的一切。

<!--more-->

## 示例功能

> [源碼](https://github.com/hbstack/hello)。

讓我們從 `hello` 示例開始，其：

- 於 `<html>` 和 `<body>` 上追加屬性。
- 使用鉤子以添加自定義 HTML 標記，如元標記、CSS 和 JS。
- 於頁面顯示問候信息，並使用 SCSS、TypeScript 修改其樣式和文本。

<!--more-->

## 準備工作

- 一個用於模塊測試的 HB 站點，如果還沒有，可以使用[入門主題](https://github.com/hbstack/theme)。
- 熟悉雨果開發。
- 已安裝好[構建工具]({{< relref "docs/getting-started/prerequisites#build-tools" >}})。

## 初始化模塊

首先，創建並初始化一個模塊。

{{% code-snippet init-module %}}

請將模塊路徑  `example.com/vendor/hello` 替換成你的，比如 `github.com/hbstack/hello`，其中 `vendor` 爲組織名稱或你的用戶名。

{{< bs/alert >}}
{{% markdownify %}}
本指南始終使用 `example.com/vendor/hello` 作爲模塊路徑。
{{% /markdownify %}}
{{< /bs/alert >}}

## 設置 HB 站點

推薦於 HB 站點導入本地模塊，以方便開發和調試。

### 導入本地模塊

首先，我們需要導入本地模塊到 HB 站點。

{{< bs/config-toggle filename=hugo >}}
[[module.imports]]
path = "example.com/vendor/hello"
{{< /bs/config-toggle >}}

然後於 `go.mod` 中將其映射到本地路徑。

{{% code-snippet replace-go-mod %}}

其中 `/path/to/hello` 爲模塊的路徑，相對路徑和絕對路徑都是有效的。

### 啓動測試站點

{{% code-snippet hugo-server %}}

## 模塊配置文件

回到模塊，創建以下模塊配置文件。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet config.toml %}}
{{< /bs/config-toggle >}}

其聲明瞭 `github.com/hbstack/hb` 模塊是必須的。

現在是時候開始實現功能了。

{{< bs/alert warning >}}
{{% markdownify %}}
`hb-vendor-hello` 將作爲 HugoPress 的模塊名稱，我們推薦以相同模式 `hb-vendor-name` 命名你的模塊，以避免和 HugoPress 模塊以及 HB 內置模塊相沖突。
{{% /markdownify %}}
{{< /bs/alert >}}

## 於 `<html>` 和 `<body>` 上追加屬性

追加以下配置以添加額外的 HTML 屬性。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet attributes.toml %}}
{{< /bs/config-toggle >}}

其中 `cacheable` 表明屬性是否可緩存，若屬性值包含動態內容，則禁用。

然後通過模板定義額外的屬性。

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/attributes/document.html" primary true %}}
{{% code-snippet attributes-document %}}
{{% /bs/collapse %}}

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/attributes/body.html" primary true %}}
{{% code-snippet attributes-body %}}
{{% /bs/collapse %}}

若無意外，HTML 源代碼如下所示：

{{% code-snippet attributes-output %}}

## 使用鉤子

本例子只使用了若干個鉤子，所有可用的鉤子可從文檔和 [HugoPress's 內置鉤子](https://hugomods.com/en/docs/hugopress/#hooks)中找到。

> 請注意，鉤子模板的上下文不同於常規模板，詳情請參閱 [hooks context](https://hugomods.com/en/docs/hugopress/#hooks-context)。

### 於 `<head>` 上生成內容

有兩個內置的鉤子可用於在 `<head>` 內放置自定義內容：`head-begin` 和 `head-end`，通常用於生成元標記、導入樣式等。

追加以下配置以啓用。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet hooks-head.toml %}}
{{< /bs/config-toggle >}}

> 同屬性，若模板包含動態內容，則禁用 `cacheable`。

然後創建對應的模板：

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/hooks/head-begin.html" primary true %}}
{{% code-snippet hook-head-begin %}}
{{% /bs/collapse %}}

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/hooks/head-end.html" primary true %}}
{{% code-snippet hook-head-end %}}
{{% /bs/collapse %}}

現在頁面將包含以下元標記。

{{% code-snippet hook-head-output %}}

### 顯示問候語

最後，於頁面頂部顯示一則問候語。

配置如下：

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet hook-body-begin.toml %}}
{{< /bs/config-toggle >}}

{{% bs/collapse "layouts/partials/hugopress/modules/hb-vendor-hello/hooks/body-begin.html" primary true %}}
{{% code-snippet body-begin %}}
{{% /bs/collapse %}}

如無意外，該問候語將顯示與頁面頂部。

## 添加樣式

你也許希望添加樣式以美化頁面，以問候語爲例，我們修改其背景色和顏色。

爲了實現模塊的靈活性，我們定義了以下參數。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet style-config.toml %}}
{{< /bs/config-toggle >}}

接着創建以下 SCSS 文件。

{{% bs/collapse "assets/hb/modules/vendor-hello/scss/variables.tmpl.scss" primary true %}}
```scss
{{% code-snippet variables.scss %}}
```
{{% /bs/collapse %}}

{{% bs/collapse "assets/hb/modules/vendor-hello/scss/index.scss" primary true %}}
```scss
{{% code-snippet style.scss %}}
```
{{% /bs/collapse %}}

重啓 Hugo 服務器以確保完全加載 SCSS 文件。

## 添加腳本

最後，讓我們利用 JS 修改問候語。

{{< bs/config-toggle filename=hugo >}}
{{% code-snippet js-config.toml %}}
{{< /bs/config-toggle >}}

{{% bs/collapse "assets/hb/modules/vendor-hello/js/index.ts" primary true %}}
```ts
{{% code-snippet index.ts %}}
```
{{% /bs/collapse %}}

## 於生產模式下測試

腳本使用到的樣式會被 PurgeCSS 移除，詳情請參閱 [PurgeCSS]({{< relref "develop/purgecss" >}})。

PurgeCSS 只有在生產模式下生效，我們可以通過以下命令於生產模式預覽模塊。

```sh
hugo server -e production --minify --gc --renderToDisk -b http://localhost:1313 -p 1313
```

## 發佈

當模塊完成後，是時候通過推送到遠程倉庫以發佈模塊了，然後將映射關係從 `go.mod` 中移除。
