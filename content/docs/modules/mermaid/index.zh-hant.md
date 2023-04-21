+++
title = "Mermaid 模塊"
linkTitle = "Mermaid"
date = 2023-01-22T15:20:32+08:00
tags = ["Mermaid", "圖表"]
categories = ["模塊"]
series = ["文檔"]
images = ["https://mermaid.js.org/header.png"]
authors = ["HB"]
+++

Mermaid 是一個基於 JavaScript 的圖表工具，使用 Markdown 啓發的文本定義和一個渲染器來創建和修改複雜的圖表。

<!--more-->

{{% hb-module mermaid %}}

## 用法

### Mermaid 代碼塊

````markdown
```mermaid
DIAGRAM SYNTAX
```
````

### Mermaid 短代碼

```markdown
{{</* mermaid */>}}
DIAGRAM SYNTAX
{{</* /mermaid */>}}
```

## 例子

詳情請參閱 [Mermaid Docs](https://mermaid.js.org/)。

### 流程圖

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

### 類圖

{{< mermaid >}}
classDiagram
note "From Duck till Zebra"
Animal <|-- Duck
note for Duck "can fly\ncan swim\ncan dive\ncan help in debugging"
Animal <|-- Fish
Animal <|-- Zebra
Animal : +int age
Animal : +String gender
Animal: +isMammal()
Animal: +mate()
class Duck{
+String beakColor
+swim()
+quack()
}
class Fish{
-int sizeInFeet
-canEat()
}
class Zebra{
+bool is_wild
+run()
}
{{< /mermaid >}}
