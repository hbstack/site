---
title: "为 Hugo 站点创建 Docker 镜像"
linkTitle: Docker 镜像
date: 2023-04-14T21:22:22+08:00
draft: false
series:
  - 文档
categories:
  - 部署
tags:
  - Docker
images:
authors:
  - HB
---

本文描述了如何为 Hugo 站点创建 Docker 镜像，以便推送到容器注册中心，并部署于自搭建服务器、Docker Swarm 或 k8s 集群等。

<!--more-->

## 原理

该例子使用 Nginx 作为 Web 服务器，为 Hugo 生成的静态文件提供服务。

## 创建 Dockerfile

创建 `Dockerfile` 并按需调整，比如回退的 404 页面。

{{% bs/collapse "Dockerfile" primary true %}}
{{% code-snippet dockerfile %}}
{{% /bs/collapse %}}

## 测试 Dockerfile

{{% code-snippet test %}}

现在你可以通过 `https://localhost:8080` 测试 Dockerfile。

## 构建 Docker 镜像

{{% code-snippet build %}}
