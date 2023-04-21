---
title: "Bigger Picture 模塊"
linkTitle: "Bigger Picture"
date: 2023-02-19T13:39:32+08:00
draft: false
pinned: true
series:
  - 文檔
categories:
  - 模塊
tags:
  - 圖片
images:
featured: true
authors:
  - HB
---

當點擊一張不可鏈接的圖片時，將彈出一個圖片查看器。

<!--more-->

{{% hb-module bigger-picture %}}

## 短代碼

### 圖片鏈接短代碼

當點擊一個{{< img-link "圖片" "/images/sample.webp" >}}鏈接時，彈出該圖片。

```markdown
{{</* img-link [text] [url] */>}}
```

{{< bs/alert warning >}}
目前暫不支持站點和頁面的圖片資源。
{{< /bs/alert >}}
