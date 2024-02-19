---
type: docs
title: "HB Spoiler Tag Shortcode"
linkTitle: "Spoiler Tag"
description: "Spoiler tags allow you to write text that some users may not want to see and hide until the reader chooses to see it."
date: 2024-02-18T10:56:41+08:00
draft: false
nav_weight: 1000
nav_icon:
  vendor: bs
  name: square-fill
series:
  - Modules
categories:
  - Shortcodes
tags:
  - Spoiler Tag
images:
authors:
  - HB
---

## Syntax

### Self Closing Syntax

```markdown
{{</* spoiler-tag /*/>}}
```

### Closing Syntax

```markdown
{{</* spoiler-tag */>}}
TEXT
{{</* /spoiler-tag */>}}
```

{{% hugo/shortcode-params params.yaml %}}

## Examples

### Inline Spoiler Tag Example

{{< hugo/shortcode-example >}}
In the movie, {{</* spoiler-tag "the hero kills his wife." /*/>}}
{{< /hugo/shortcode-example >}}

### Selectable Spoiler Tag Example

{{< hugo/shortcode-example >}}
In the example, {{</* spoiler-tag text="the spoiler tag is selectable." selectable=true /*/>}}
{{< /hugo/shortcode-example >}}

### Long Spoiler Tag Example With Markdown Syntax

{{< hugo/shortcode-example >}}
Lorem ipsum dolor sit amet, consectetur adipiscing elit.
{{</* spoiler-tag markdown=true */>}}
__Aenean__ _quis_ ipsum ~~tortor~~. Integer vel lectus vel mauris mattis laoreet. In quis pellentesque metus. Fusce tincidunt purus a leo feugiat, id vehicula nunc congue. Fusce posuere sodales sagittis. Maecenas scelerisque est vel scelerisque sollicitudin. Nam id ligula placerat dolor interdum ullamcorper. Proin a venenatis purus. Donec accumsan et risus sit amet rhoncus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce eu semper urna. Suspendisse ex lacus, malesuada ut nisi in, hendrerit imperdiet enim. In erat ex, tincidunt eget hendrerit eu, efficitur a neque. Vestibulum purus dolor, lobortis vel varius ac, elementum vel dolor.
{{</* /spoiler-tag */>}}
{{< /hugo/shortcode-example >}}
