---
title: "于 Netlify 部署站点"
title: "Netlify"
date: 2023-04-15T10:09:40+08:00
draft: false
series:
  - 文档
categories:
  - 部署
tags:
  - Netlify
images:
authors:
  - HB
---

这篇文章包含了如何在 Netlify 上部署网站的分步说明。

<!--more-->

可以通过多种方式于 Netlify 部署站点，本文只对基于文件配置的部署方式，其比控制台设置更灵活。

## 通过基于文件配置部署站点

### 创建 Netlify 配置文件

首先创建以下配置文件，然后提交到你的仓库。

{{% bs/collapse netlify.toml primary true %}}
```toml
{{% code-snippet netlify.toml %}}
```
{{% /bs/collapse %}}

### 新增站点

1. 登录到 [Netlify](https://www.netlify.com/) 控制台。
2. 点击 _Add new site_，然后选择 `Import an existing project`。
3. 选择仓库。
4. 保持表单原样，因为我们已于 `netlify.toml` 中配置。
5. 点击 _Deploy site_ 以发布站点。

{{< bs/alert warning >}}
当你修改了自定义域名后，你需要重新部署站点。
{{< /bs/alert >}}
