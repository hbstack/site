+++
title = "Mermaid"
date = 2023-01-22T15:20:32+08:00
tags = ["Mermaid", "图表"]
categories = ["模块"]
series = ["文档"]
images = ["https://mermaid.js.org/header.png"]
authors = ["RazonYang"]
+++

Mermaid 是一个基于 JavaScript 的图表工具，使用 Markdown 启发的文本定义和一个渲染器来创建和修改复杂的图表。

<!--more-->

{{% hb-module mermaid %}}

## 用法

### Mermaid 代码块

````markdown
```mermaid
DIAGRAM SYNTAX
```
````

### Mermaid 短代码

```markdown
{{</* mermaid */>}}
DIAGRAM SYNTAX
{{</* /mermaid */>}}
```

## 例子

详情请参阅 [Mermaid Docs](https://mermaid.js.org/)。

### 流程图

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

### 类图

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
