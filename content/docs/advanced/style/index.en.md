---
title: "Customize Styles"
linkTitle: Styles
date: 2023-04-15T00:12:29+08:00
draft: false
series:
  - Docs
categories:
tags:
  - Bootstrap
  - SCSS
  - CSS
images:
authors:
  - HB
---

HB allows adding custom styles and overriding the Bootstrap default SCSS variables.

<!--more-->

## Add Custom Styles

Create the following file to add custom styles.

{{< bs/collapse "assets/hb/modules/custom/scss/index.scss" primary true >}}
{{% code-snippet index.scss %}}
{{< /bs/collapse >}}

{{< bs/alert >}}
Please restart the Hugo server on first load.
{{< /bs/alert >}}

## Customize Bootstrap SCSS Variables

To customize the SCSS variables, you need to create the following file.

{{< bs/collapse "assets/hb/modules/custom/scss/variables.tmpl.scss" primary true >}}
{{% code-snippet variables.scss %}}
{{< /bs/collapse >}}

{{< bs/alert >}}
Please restart the Hugo server to make sure the newer created file was loaded.
{{< /bs/alert >}}

Available SCSS variables can be found at the docs and source code.

- https://getbootstrap.com/
- https://github.com/twbs/bootstrap/blob/main/scss/_variables.scss
- https://github.com/twbs/bootstrap/blob/main/scss/_variables-dark.scss
