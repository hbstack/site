+++
title = "Mermaid"
date = 2023-01-22T15:20:32+08:00
tags = ["Mermaid", "Diagrams"]
categories = ["Module"]
series = ["Docs"]
images = ["https://mermaid.js.org/header.png"]
authors = ["RazonYang"]
+++

Mermaid is a JavaScript-based diagramming and charting tool that uses Markdown-inspired text definitions and a renderer to create and modify complex diagrams.

<!--more-->

{{% hb-module mermaid %}}

## Usages

### Use Mermaid via Code Block

````markdown
```mermaid
DIAGRAM SYNTAX
```
````

### Use Mermaid via Shortcode

```markdown
{{</* mermaid */>}}
DIAGRAM SYNTAX
{{</* /mermaid */>}}
```

## Examples

See [Mermaid Docs](https://mermaid.js.org/) for details.

### Flowchart

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

### Class Diagrams

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
