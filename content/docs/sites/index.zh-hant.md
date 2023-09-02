---
title: "使用 HB 的網站"
linkTitle: "網站"
description: 誰在使用 HB 框架？
date: 2023-09-02T23:39:04+08:00
draft: false
nav_icon:
  vendor: bs
  name: globe
  color: green
series:
  - 文檔
categories:
tags:
images:
authors:
  - HB
---

與我們分享你使用 HB 構建的網站，一旦審核通過，你的網站將於我們的主頁和本頁面進行展示。

## 如何添加我的網站？

於 [/data/sites/](https://github.com/hbstack/site/blob/main/data/sites/) 目錄下新建一個數據文件以描述和添加你的站點，然後創建 PR 並等待審查和合並。

{{< bs/alert warning >}}
{{< markdownify >}}
數據文件命名約定：使用域名並將其中的點（`.`）替換爲破折號（`-`），比如 `https://example.org/` 應該保存爲 `example-org.toml`。
{{< /markdownify >}}
{{< /bs/alert >}}

```toml
url = "https://example.org/"
title = "站點名稱"
date = "2023-xx-xx"
# logo = ""
# logo_width = 100
# logo_height = 100
```

| Property | Type | Description |
| -------- | :--: | ----------- |
| `url` | string | 網站 URL，**必填**。 |
| `title` | string | 網站名稱，請儘可能短，否則可能會被截斷。 |
| `date` | date | 請求添加你的站點時的日期，如 `2023-09-01`，**必填**。 |
| `logo` | string | 網站 logo，可選。|
| `logo_width` | number | Logo 原始寬度，當設置了 `logo` 時則必填。 |
| `logo_height` | number | Logo 原始高度，當設置了 `logo` 時則必填。 |

{{< bs/alert warning >}}
{{< markdownify >}}
URLs **必須**使用 HTTPS 協議，否則我們不會接受你的站點。
{{< /markdownify >}}
{{< /bs/alert >}}

## 正在使用 HB 框架的站點 {.text-center}

{{< sites >}}
