---
type: docs
title: "Staticman 評論模塊"
linkTitle: "Staticman 評論"
date: 2023-05-28T23:54:58+08:00
draft: false
nav_weight: 1000
# nav_icon:
#   vendor: bs
#   name: book
series:
  - 模塊
categories:
  - 評論
tags:
  - Staticman
images:
authors:
  - HB
---

Staticman 評論模塊爲其他模塊提供了一個靈活的模板，以生成評論表單和顯示嵌套的評論。

<!--more-->

{{% hb-module staticman-comments %}}

## 特性

- 嵌套評論。
- 完全靜態化，評論存儲於 Git 倉庫中，並靜態地渲染。
- reCaptcha.

## 要求

- Staticman 實例。

{{< bs/alert >}}
{{< markdownify >}}
我們提供了一個 [免費的 Staticman 實例](https://staticman.hugomods.com/)（僅支持 GitHub），其可用於測試和生產環境。在使用此 endpoint 前，你需要於倉庫安裝 [Staticman Service GitHub App](https://github.com/apps/staticman-service)。
若包含敏感信息，比如 reCaptcha 密鑰，我們建議創建你自己的實例。
{{< /markdownify >}}
{{< /bs/alert >}}

## 模板

{{% code-snippet template %}}

然後聲明默認的參數。

{{< bs/config-toggle hugo >}}
{{% code-snippet config.yaml %}}
{{< /bs/config-toggle >}}

{{< bs/alert warning >}}
{{% markdownify %}}
請將 `my_staticman` 替換爲你自己的，以避免與其他模塊相沖突。
{{% /markdownify %}}
{{< /bs/alert >}}

### 模板參數

| Parameter    |  Type   | Required | Description                                                        |
| ------------ | :-----: | :------: | ------------------------------------------------------------------ |
| `endpoint`   | string  |    Y     | Staticman 實例的 endpoint，如：`https://staticman.hugomods.com/`。 |
| `service`    | string  |    Y     | Git 服務提供商: `github`, `gitlab` 或 `onedev`。                   |
| `repo`       | string  |    Y     | Git 倉庫名稱, i.e. `user/repo`.                                    |
| `branch`     | string  |    Y     | 分支名稱，如：`main` 和 `master`。                                 |
| `property`   | string  |    Y     | Staticman 的屬性，如：`comments`。                                 |
| `moderation` | boolean |    Y     | 是否開啓 `moderation`，需與 Staticman 配置相一致。                 |
| `required_fields` | array |       | 額外的必填項，有效選項：`email` 和 `url`。                          |
| `reCaptcha`  | object  |          | reCaptcha v2.                                                               |
| `reCaptcha.sitekey` | string |    | reCaptcha v2 site key.                                                      |
| `reCaptcha.secret`  | string |    | reCaptcha v2 encrypted[^1] secret.                                          |

[^1]: 你需要打開 `https://ennpoint/v3/encrypt/SECRET` 以加密敏感數據，比如：`https://staticman.hugomods.com/v3/encrypt/MY_SECRET`。

## Staticman 配置

此外，你還需要於倉庫根目錄創建 `staticman.yml`，舉個例子。

{{% bs/collapse staticman.yml primary true %}}
```yaml
{{% code-snippet staticman.yaml %}}
```
{{% /bs/collapse %}}

{{< bs/alert warning >}}
{{% markdownify %}}
其中 `allowedFields`、`path` 和 `file` 爲固定值。
{{% /markdownify %}}
{{< /bs/alert >}}
