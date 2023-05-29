---
type: docs
title: "Staticman 评论模块"
linkTitle: "Staticman 评论"
date: 2023-05-28T23:54:58+08:00
draft: false
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - 模块
categories:
  - 评论
tags:
  - Staticman
images:
authors:
  - HB
---

Staticman 评论模块为其他模块提供了一个灵活的模板，以生成评论表单和显示嵌套的评论。

<!--more-->

{{% hb-module staticman-comments %}}

![Comment Reply Modal](reply-modal.png#center)

## 特性

- 嵌套评论。
- 完全静态化，评论存储于 Git 仓库中，并静态地渲染。
- reCaptcha.

## 要求

- Staticman 实例。

{{< bs/alert >}}
{{< markdownify >}}
我们提供了一个 [免费的 Staticman 实例](https://staticman.hugomods.com/)（仅支持 GitHub），其可用于测试和生产环境。在使用此 endpoint 前，你需要于仓库安装 [Staticman Service GitHub App](https://github.com/apps/staticman-service)。
若包含敏感信息，比如 reCaptcha 密钥，我们建议创建你自己的实例。
{{< /markdownify >}}
{{< /bs/alert >}}

## 模板

{{% code-snippet template %}}

然后声明默认的参数。

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

{{< bs/alert warning >}}
{{% markdownify %}}
请将 `my_staticman` 替换为你自己的，以避免与其他模块相冲突。
{{% /markdownify %}}
{{< /bs/alert >}}

### 模板参数

| Parameter    |  Type   | Required | Description                                                        |
| ------------ | :-----: | :------: | ------------------------------------------------------------------ |
| `endpoint`   | string  |    Y     | Staticman 实例的 endpoint，如：`https://staticman.hugomods.com/`。 |
| `service`    | string  |    Y     | Git 服务提供商: `github`, `gitlab` 或 `onedev`。                   |
| `repo`       | string  |    Y     | Git 仓库名称, i.e. `user/repo`.                                    |
| `branch`     | string  |    Y     | 分支名称，如：`main` 和 `master`。                                 |
| `property`   | string  |    Y     | Staticman 的属性，如：`comments`。                                 |
| `moderation` | boolean |    Y     | 是否开启 `moderation`，需与 Staticman 配置相一致。                 |
| `required_fields` | array |       | 额外的必填项，有效选项：`email` 和 `url`。                          |
| `reCaptcha`  | object  |          | reCaptcha v2.                                                               |
| `reCaptcha.sitekey` | string |    | reCaptcha v2 site key.                                                      |
| `reCaptcha.secret`  | string |    | reCaptcha v2 encrypted[^1] secret.                                          |

[^1]: 你需要打开 `https://ennpoint/v3/encrypt/SECRET` 以加密敏感数据，比如：`https://staticman.hugomods.com/v3/encrypt/MY_SECRET`。

## Staticman 配置

此外，你还需要于仓库根目录创建 `staticman.yml`，举个例子。

{{% bs/collapse staticman.yml primary true %}}
```yaml
{{% code-snippet staticman.yaml %}}
```
{{% /bs/collapse %}}

{{< bs/alert warning >}}
{{% markdownify %}}
其中 `allowedFields`、`path` 和 `file` 为固定值。
{{% /markdownify %}}
{{< /bs/alert >}}
