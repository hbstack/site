---
type: docs
title: "联系表单模块"
linkTitle: "联系表单"
date: 2023-06-20T15:26:36+08:00
nav_weight: 1000
nav_icon:
  vendor: bs
  name: headset
series:
  - 模块
categories:
tags:
  - 联系表单
images:
authors:
  - HB
---

该模块内置了一个布局和短代码，以生成联系表单，其兼容大部分表单服务后端。

<!--more-->

{{% hb-module contact %}}

## 站点参数

{{% parameters params.zh-hans.toml %}}

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

## 已知兼容的表单后端

按字母排序，请随意于[这里](https://github.com/hbstack/site/edit/main/data/contact-form-backends.toml)添加兼容的后端。

{{< contact-form-backends >}}

## 使用方法

可通过多种方式生成联系表单。

### 使用布局生成联系表单

该模块提供了一个内置的布局 - `contact`, 你可以简单地创建一个联系表单页面。

{{< bs/collapse "content/contact/_index.md" primary true >}}
{{% code-snippet contact-page %}}
{{< /bs/collapse >}}

你还可以使用任意不同于 `/contact` 的自定义路径，你只需要于前言中设置 `layout` 为 `contact`。以 `/contact-us/` 为例。

{{< bs/collapse "content/contact-us/_index.md" primary true >}}
{{% code-snippet contact-page-with-layout %}}
{{< /bs/collapse >}}

### 通过短代码生成联系表单

该模块还提供了一个短代码 `hb/contact` 以生成联系表单，该短代码接受上述相同的[参数](#站点参数)以修改站点参数配置。

```markdown
<div class="row row-cols-1 row-cols-lg-2">
  <div class="col">
    {{</* hb/contact */>}}
  </div>
  <div class="col">
    {{</* hb/contact endpoint="https://example.com/contact/sales" file=true */>}}
  </div>
</div>
```

![联系表单短代码例子](shortcode-example.png)
