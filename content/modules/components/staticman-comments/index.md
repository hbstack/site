---
type: docs
title: "Staticman Comments Module"
linkTitle: "Staticman Comments"
date: 2023-05-28T23:54:58+08:00
draft: false
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - Modules
categories:
  - Comments
tags:
  - Staticman
images:
authors:
  - HB
---

The staticman comments module ships with flexible template for other modules, to generate comment form and show the nested comments.

<!--more-->

{{% hb-module staticman-comments %}}

![Comment Reply Modal](reply-modal.png#center)

## Features

- Nested comments.
- Truly static, the comments are stored on your Git repo and rendered statically.
- reCaptcha.

## Requirements

- Staticman instance.

{{< bs/alert >}}
{{< markdownify >}}
We set up a [free Staticman instance](https://staticman.hugomods.com/) (supports GitHub repo only), which can be used in test and production purposes. We suggest setting up your own instance, if there is sensitive data, such as the encrypted reCaptcha secret.
{{< /markdownify >}}
{{< /bs/alert >}}

## Template

{{% code-snippet template %}}

And then declare the default parameters.

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

{{< bs/alert warning >}}
{{% markdownify %}}
Please change the `my_staticman` as your own to avoid conflicting with other modules.
{{% /markdownify %}}
{{< /bs/alert >}}

### Template Parameters

| Parameter    |  Type   | Required | Description                                                                 |
| ------------ | :-----: | :------: | --------------------------------------------------------------------------- |
| `endpoint`   | string  |    Y     | The endpoint of Staticman instance, i.e. `https://staticman.hugomods.com/`. |
| `service`    | string  |    Y     | Git service provider: `github`, `gitlab` or `onedev`.                       |
| `repo`       | string  |    Y     | Git repo name, i.e. `user/repo`.                                            |
| `branch`     | string  |    Y     | The branch name, such as `main` and `master`.                               |
| `property`   | string  |    Y     | The name of Staticman property, for example, `comments`.                    |
| `moderation` | boolean |    Y     | Whether to enable moderation, should be same as Staticman settings.         |
