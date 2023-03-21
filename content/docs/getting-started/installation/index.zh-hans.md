---
title: "安装"
date: 2023-02-17T15:53:42+08:00
draft: false
nav_weight: 3
series:
  - 文档
categories:
  - 安装
tags:
authors:
  - RazonYang
menu:
  footer:
    parent: docs
    weight: 33
    params:
      icon:
        vendor: bs
        name: download
---

我们提供了一个[入门主题模板](https://github.com/razonyang/hb-theme)，以便你快速地创建一个 HB 站点。

<!--more-->

## 安装

### 克隆仓库

```sh
git clone --depth 1 https://github.com/razonyang/hb-theme blog

cd blog
```

其中的 `blog` 是本地目录名称，请随意修改。

### 模块路径

首先修改位于 `go.mod` 的模块路径，将其中的 `module github.com/razonyang/hb-theme` 替换为你的，如：`module github.com/user/repo`。

```sh
sed -i -e 's/module\ github.com\/razonyang\/hb-theme/module\ github.com\/user\/repo/' go.mod
```

### 推送到远程仓库

#### 提交改动

```sh
git add .

git commit --amend
```

修改提交信息保存即可，如：`First commit`。

#### 修改远程仓库

```sh
git remote set-url origin https://github.com/user/repo
```

#### 推送

```sh
git push origin main
```

## Hugo 模块代理（可选）

如果你在中国大陆没有VPN，雨果模块的下载可能会失败。

对此有两个代理：GOPROXY.CN 和 GOPROXY.IO。

```sh
export HUGO_MODULE_PROXY=https://goproxy.cn
```

{{< bootstrap/alert info >}}
{{% markdownify %}}
Hugo 不遵循 `GOPROXY` 环境变量，请使用 `HUGO_MODULE_PROXY` 代替。
{{% /markdownify %}}
{{< /bootstrap/alert >}}

你也可以设置 `module.proxy` 配置替代环境变量。

{{< bootstrap/config-toggle filename=hugo >}}
module:
  proxy: https://goproxy.cn
{{< /bootstrap/config-toggle >}}

## 本地预览

```sh
hugo server --gc --disableFastRender
```

## 下一步

- 调整[配置]({{< ref "docs/configuration" >}})
- 创建[内容]({{< ref "docs/content" >}})
- [部署]({{< ref "docs/deployment" >}})
