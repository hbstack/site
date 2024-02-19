---
type: docs
title: "HB 剧透标签短代码"
linkTitle: "剧透标签"
description: "剧透标签可以让你写下一些用户可能不想看到的文字，并将其隐藏起来，直到读者选择查看。"
date: 2024-02-18T10:56:41+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: square-fill
series:
  - 模块
categories:
  - 短代码
tags:
  - 剧透标签
images:
authors:
  - HB
---

## 语法

### 自闭合语法

```markdown
{{</* spoiler-tag /*/>}}
```

### 闭合语法

```markdown
{{</* spoiler-tag */>}}
TEXT
{{</* /spoiler-tag */>}}
```

{{% hugo/shortcode-params params.yaml %}}

## 示例

### 内联剧透标签示例

{{< hugo/shortcode-example >}}
In the movie, {{</* spoiler-tag "the hero kills his wife." /*/>}}
{{< /hugo/shortcode-example >}}

### 可选择的剧透标签示例

{{< hugo/shortcode-example >}}
In the example, {{</* spoiler-tag text="the spoiler tag is selectable." selectable=true /*/>}}
{{< /hugo/shortcode-example >}}

### 带有 Markdown 格式的长剧透标签示例

{{< hugo/shortcode-example >}}
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
{{</* spoiler-tag markdown=true */>}}
__Aenean__ _quis_ ipsum ~~tortor~~. Integer vel lectus vel mauris mattis laoreet. In quis pellentesque metus. Fusce tincidunt purus a leo feugiat, id vehicula nunc congue. Fusce posuere sodales sagittis. Maecenas scelerisque est vel scelerisque sollicitudin. Nam id ligula placerat dolor interdum ullamcorper. Proin a venenatis purus. Donec accumsan et risus sit amet rhoncus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce eu semper urna. Suspendisse ex lacus, malesuada ut nisi in, hendrerit imperdiet enim. In erat ex, tincidunt eget hendrerit eu, efficitur a neque. Vestibulum purus dolor, lobortis vel varius ac, elementum vel dolor.
{{</* /spoiler-tag */>}}
{{< /hugo/shortcode-example >}}
