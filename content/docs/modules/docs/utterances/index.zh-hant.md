---
title: 文檔 Utterances 評論引擎
linkTitle: "Utterances"
date: 2023-03-31T16:28:09+08:00
draft: false
series:
  - 文檔
categories:
  - 模塊
tags:
  - 評論
  - Utterances
images:
---

該模塊爲文檔模塊提供 [Utterances](https://utteranc.es) 評論引擎的支持，其基於 GitHub issues.

<!--more-->

{{% hb-module "docs/modules/utterances" %}}

## 站點參數

| Parameter |  Type  | Default | Description       |
| --------- | :----: | :-----: | ----------------- |
| `repo`    | string |    -    | GitHub 倉庫名稱。 |

[Utterances 參數](https://hugomods.com/en/docs/comment-engines/utterances/#site-parameters) 列出了更多可用的參數。

{{< bs/config-toggle params >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}
