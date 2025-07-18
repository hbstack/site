---
type: docs
aliases:
  - /zh-hans/docs/develop/purgecss/
title: "PurgeCSS"
linkTitle: "PurgeCSS"
date: 2023-04-15T01:02:56+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: simple
  name: purgecss
  className: text-success
series:
  - 文档
categories:
  - 开发
tags:
  - PurgeCSS
  - CSS
  - SCSS
images:
authors:
  - HB
---

有时你可能会惊讶地发现生产环境中的一些样式不见了，很可能是因为它们被 PurgeCSS 删除了。本文介绍了如何防止样式被 PurgeCSS 删除。

<!--more-->

有多种方式将样式添加到 PurgeCSS 的安全列表，以避免被移除。

## 通过注释添加到安全列表

该方法使用特殊的注释，以告知 PurgeCSS 别移除样式。

```scss
{{% code-snippet comments.scss %}}
```

## 配置安全列表

HB 支持配置 PurgeCSS，此种方式对于通过 JavaScript 使用到的 classes、ids 和 tags 来说十分实用，因为 Hugo 无法得知 JS 使用了哪些样式。

{{< bs/collapse "assets/hb/modules/[name]/purgecss.config.toml" primary true >}}
{{% code-snippet purgecss.config.toml %}}
{{< /bs/collapse >}}

{{< bs/alert >}}
{{% markdownify %}}
请将 `[name]` 替换为你的模块名称。对于主题使用者，可使用 `custom` 作为模块名。
{{% /markdownify %}}
{{< /bs/alert >}}

| Name                | Type  | Description                           |
| ------------------- | :---: | ------------------------------------- |
| `classes`           | array | HTML 类名，如 `w-100`、`bg-success`。 |
| `ids`               | array | HTML `id`.                            |
| `tags`              | array | HTML tags，如 `h1`、 `a`。            |
| `attributes`        | array | HTML attributes，如 `data-bs-theme`。 |
| `safelist_deep`     | array | PurgeCSS 安全列表模式[^1].            |
| `safelist_greedy`   | array | PurgeCSS 安全列表模式[^1].            |
| `safelist_standard` | array | PurgeCSS 安全列表模式[^1].            |

## 测试

我们可以通过 `-e`、`--renderToDisk` 和 `--disableFastRender` 标识于本地进行测试。

{{% code-snippet test %}}

## 了解更多

- [PurgeCSS Safelisting](https://purgecss.com/safelisting.html).

[^1]: [安全列表模式](https://purgecss.com/safelisting.html#patterns).
