---
type: docs
title: "HB 劇透標籤短代碼"
linkTitle: "劇透標籤"
description: "劇透標籤可以讓你寫下一些用戶可能不想看到的文字，並將其隱藏起來，直到讀者選擇查看。"
date: 2024-02-18T10:56:41+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: square-fill
series:
  - 模塊
categories:
  - 短代碼
tags:
  - 劇透標籤
images:
authors:
  - HB
---

## 語法

### 自閉合語法

```markdown
{{</* spoiler-tag /*/>}}
```

### 閉合語法

```markdown
{{</* spoiler-tag */>}}
TEXT
{{</* /spoiler-tag */>}}
```

{{% hugo/shortcode-params params.yaml %}}

## 示例

### 內聯劇透標籤示例

{{< hugo/shortcode-example >}}
In the movie, {{</* spoiler-tag "the hero kills his wife." /*/>}}
{{< /hugo/shortcode-example >}}

### 可選擇的劇透標籤示例

{{< hugo/shortcode-example >}}
In the example, {{</* spoiler-tag text="the spoiler tag is selectable." selectable=true /*/>}}
{{< /hugo/shortcode-example >}}

### 帶有 Markdown 格式的長劇透標籤示例

{{< hugo/shortcode-example >}}
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
{{</* spoiler-tag markdown=true */>}}
__Aenean__ _quis_ ipsum ~~tortor~~. Integer vel lectus vel mauris mattis laoreet. In quis pellentesque metus. Fusce tincidunt purus a leo feugiat, id vehicula nunc congue. Fusce posuere sodales sagittis. Maecenas scelerisque est vel scelerisque sollicitudin. Nam id ligula placerat dolor interdum ullamcorper. Proin a venenatis purus. Donec accumsan et risus sit amet rhoncus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce eu semper urna. Suspendisse ex lacus, malesuada ut nisi in, hendrerit imperdiet enim. In erat ex, tincidunt eget hendrerit eu, efficitur a neque. Vestibulum purus dolor, lobortis vel varius ac, elementum vel dolor.
{{</* /spoiler-tag */>}}
{{< /hugo/shortcode-example >}}
