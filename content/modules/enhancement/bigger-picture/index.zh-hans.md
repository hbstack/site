---
type: docs
aliases:
  - /zh-hans/docs/modules/bigger-picture/
title: "Bigger Picture 模块"
linkTitle: "Bigger Picture"
date: 2023-02-19T13:39:32+08:00
draft: false
pinned: false
series:
  - 文档
categories:
  - 模块
tags:
  - 图片
images:
featured: true
authors:
  - HB
---

当点击一张不可链接的图片时，将弹出一个图片查看器。

<!--more-->

{{% hb-module bigger-picture %}}

## 短代码

### 图片链接短代码

当点击一个{{< img-link "图片" "/images/sample.webp" >}}链接时，弹出该图片。

```markdown
{{</* img-link [text] [url] */>}}
```

{{< bs/alert warning >}}
目前暂不支持站点和页面的图片资源。
{{< /bs/alert >}}
