---
title: "PurgeCSS"
linkTitle: "PurgeCSS"
date: 2023-04-15T01:02:56+08:00
draft: false
series:
  - 文檔
categories:
  - 開發
tags:
  - PurgeCSS
  - CSS
  - SCSS
images:
authors:
  - HB
---

有時你可能會驚訝地發現生產環境中的一些樣式不見了，很可能是因爲它們被 PurgeCSS 刪除了。本文介紹瞭如何防止樣式被 PurgeCSS 刪除。

<!--more-->

有多種方式將樣式添加到 PurgeCSS 的安全列表，以避免被移除。

## 通過註釋添加到安全列表

該方法使用特殊的註釋，以告知 PurgeCSS 別移除樣式。

```scss
{{% code-snippet comments.scss %}}
```

## 配置安全列表

HB 支持配置 PurgeCSS，此種方式對於通過 JavaScript 使用到的 classes、ids 和 tags 來說十分實用，因爲 Hugo 無法得知 JS 使用了哪些樣式。

{{% bs/collapse "assets/hb/modules/[name]/purgecss.config.toml" primary true %}}
{{% code-snippet purgecss.config.toml %}}
{{% /bs/collapse %}}

{{< bs/alert >}}
{{% markdownify %}}
請將 `[name]` 替換爲你的模塊名稱。對於主題使用者，可使用 `custom` 作爲模塊名。
{{% /markdownify %}}
{{< /bs/alert >}}

| Name                | Type  | Description                           |
| ------------------- | :---: | ------------------------------------- |
| `classes`           | array | HTML 類名，如 `w-100`、`bg-success`。 |
| `ids`               | array | HTML `id`.                            |
| `tags`              | array | HTML tags，如 `h1`、 `a`。            |
| `attributes`        | array | HTML attributes，如 `data-bs-theme`。 |
| `safelist_deep`     | array | PurgeCSS 安全列表模式[^1].            |
| `safelist_greedy`   | array | PurgeCSS 安全列表模式[^1].            |
| `safelist_standard` | array | PurgeCSS 安全列表模式[^1].            |

## 測試

我們可以通過 `-e`、`--renderToDisk` 和 `--disableFastRender` 標識於本地進行測試。

{{% code-snippet test %}}

## 瞭解更多

- [PurgeCSS Safelisting](https://purgecss.com/safelisting.html).

[^1]: [安全列表模式](https://purgecss.com/safelisting.html#patterns).
