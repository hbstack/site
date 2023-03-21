+++
title = "图表"
date = 2023-01-22T15:20:32+08:00
tags = ["Mermaid", "GoAT"]
categories = ["图表"]
series = ["文档"]
authors = ["RazonYang"]
+++

HB 支持 GoAT 和 Mermaid 来渲染图表。

<!--more-->

## Mermaid

Mermaid 由 [mermaid]({{< ref "docs/modules/mermaid" >}}) 模块提供支持。

## GoAT

Hugo 原生支持 GoAT，更多的语法和例子请参阅 https://github.com/bep/goat。

````markdown
```goat
DIAGRAM
```
````

```goat
      .               .                .               .--- 1          .-- 1     / 1
     / \              |                |           .---+            .-+         +
    /   \         .---+---.         .--+--.        |   '--- 2      |   '-- 2   / \ 2
   +     +        |       |        |       |    ---+            ---+          +
  / \   / \     .-+-.   .-+-.     .+.     .+.      |   .--- 3      |   .-- 3   \ / 3
 /   \ /   \    |   |   |   |    |   |   |   |     '---+            '-+         +
 1   2 3   4    1   2   3   4    1   2   3   4         '--- 4          '-- 4     \ 4
```
