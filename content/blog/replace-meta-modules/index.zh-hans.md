---
title: "替换元模块"
description: 如何替换元模块。
date: 2023-10-10T22:44:37+08:00
draft: false
series:
  - 教程
categories:
  - 模块
tags:
  - 元模块
images:
authors:
  - HB
---

## 背景

起初，为了方便新手快速入门和熟悉 HB 框架的主题，我们提供了一些[元模块]({{< relref "modules/meta" >}})，其只是模块的集合，本身并不提供任何功能。

但目前元模块有着一个明显的缺点，就是很难从中移除不需要的模块。因此在本教程中，我们将谈及如何从元模块中移除模块。

## 解决方案

为此，我们需要知道元模块导入了哪些模块，然后将其导入的模块__依次__地重新导入，并将不需要的模块去除，最后将元模块移除即可。

{{< bs/alert danger >}}
导入模块的顺序非常重要，其优先级从上至下，如果你不喜欢这样，只需保持与元模块定义的顺序相同即可。
{{< /bs/alert >}}

假设网站导入了 [github.com/hbstack/meta/recommended](https://github.com/hbstack/meta/blob/main/recommended/hugo.toml) 元模块。

```toml
[[module.imports]]
path = "github.com/hbstack/meta/recommended"
```

首先，将元模块依次替换为其导入的模块。

{{< emgithub
  owner=hbstack
  repo=meta
  file="recommended/hugo.toml"
  type=code
>}}

然后移除或替换不需要的模块，例如，你可能想将开源项目文档网站的 `github.com/hbstack/header/modules/search` 替换为 `github.com/hbstack/header/modules/docsearch`。

{{< bs/alert >}}
对于以 YAML 或 JSON 编写的其他配置，你需要先将其转换为相应的语言。
{{< /bs/alert >}}
