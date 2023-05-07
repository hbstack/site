---
type: docs
aliases:
  - /en/docs/develop/purgecss/
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
  - Docs
categories:
  - Develop
tags:
  - PurgeCSS
  - CSS
  - SCSS
images:
authors:
  - HB
---

Sometimes you may be surprised that some styles are missing from the production environment, most likely because they have been removed by PurgeCSS. This article describes how to prevent styles from being deleted by PurgeCSS.

<!--more-->

There are multiple ways to add styles to PurgeCSS's safelisting, so that the styles won't be get removed by PurgeCSS.

## Safelist with Comments

This approach uses special comment to tell PurgeCSS do not to remove the styles.

```scss
{{% code-snippet comments.scss %}}
```

## Safelist with Configuration

HB allows configuring PurgeCSS, this approach is useful to add some classes, ids and tags which used by JavaScript, since Hugo unable to detect used styles in JS way.

{{% bs/collapse "assets/hb/modules/[name]/purgecss.config.toml" primary true %}}
{{% code-snippet purgecss.config.toml %}}
{{% /bs/collapse %}}

{{< bs/alert >}}
{{% markdownify %}}
Please replace `[name]` with your module name. For theme's users, use `custom` instead.
{{% /markdownify %}}
{{< /bs/alert >}}

| Name                | Type  | Description                                     |
| ------------------- | :---: | ----------------------------------------------- |
| `classes`           | array | HTML class name, such as `w-100`, `bg-success`. |
| `ids`               | array | HTML `id`.                                      |
| `tags`              | array | HTML tags, such as `h1`, `a`.                   |
| `attributes`        | array | HTML attributes, e.g. `data-bs-theme`.          |
| `safelist_deep`     | array | PurgeCSS safelisting patterns[^1].              |
| `safelist_greedy`   | array | PurgeCSS safelisting patterns[^1].              |
| `safelist_standard` | array | PurgeCSS safelisting patterns[^1].              |

## Testing

We're able to test it locally with `-e`, `--renderToDisk` and `--disableFastRender` flags.

{{% code-snippet test %}}

## Further Reading

- [PurgeCSS Safelisting](https://purgecss.com/safelisting.html).

[^1]: [PurgeCSS safelisting patterns](https://purgecss.com/safelisting.html#patterns).
