---
title: "Bigger Picture"
date: 2023-02-19T13:39:32+08:00
draft: false
pinned: true
series:
  - Docs
categories:
  - Module
tags:
  - Image
  - Picture
  - Bigger Picture
images:
featured: true
authors:
  - HB
---

When clicking any non-linkable image, the bigger picture module shows the original size of the the clicked image.

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
