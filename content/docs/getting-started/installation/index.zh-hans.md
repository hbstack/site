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
  - HB
menu:
  footer:
    parent: docs
    weight: 33
    params:
      icon:
        vendor: bs
        name: download
---

我们提供了一个[入门主题模板](https://github.com/hbstack/theme)，以便你快速地创建一个 HB 站点。

<!--more-->

## 安装

一分钟安装 HB 主题。

{{< asciinema id=576711 speed=2 >}}

由于有不少图片，Hugo 服务器在第一次运行时需要很长的时间来处理。你可能想提交 `resources/images` 文件夹以提高构建性能。

### 克隆仓库

{{% code-snippet clone %}}

其中的 `blog` 是本地目录名称，请随意修改。

### 模块路径

首先修改位于 `go.mod` 的模块路径，将其中的 `module github.com/hbstack/theme` 替换为你的，如：`module github.com/user/repo`。

```sh
sed -i -e 's/module\ github.com\/hbstack\/theme/module\ github.com\/user\/repo/' go.mod
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

如果你在中国大陆没有 VPN，Hugo 模块的下载可能会失败。另请参阅[Go 和 Hugo 代理服务器](https://hugomods.com/zh-hans/blog/2023/04/go-和-hugo-代理服务器/)。

## 安装构建工具

```sh
npm ci
```

阅读有关[构建工具]({{< relref "docs/getting-started/prerequisites#build-tools" >}})的更多信息。

## 启动 Hugo 服务器

### 于开发模式下预览

```sh
npm run dev
```

### 于生产模式下预览

```sh
npm run prod
```

## 下一步

- 调整[配置]({{< ref "docs/configuration" >}})和参数，如 `baseURL`、`giscus.*` 等。
- 移除不需要的配置、菜单、内容、图片和 GitHub actions（workflows）。
- 创建[内容]({{< ref "docs/content" >}})。
- [部署站点]({{< ref "docs/deployment" >}})。
