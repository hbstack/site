---
title: "Create Docker Images for Hugo Sites"
linkTitle: Docker Image
date: 2023-04-14T21:22:22+08:00
draft: false
series:
  - Docs
categories:
  - Deployment
tags:
  - Docker
images:
authors:
  - HB
---

The article describes how to create a Docker image for Hugo site, then you're able push it to container registry, and deploy on self-hosted server, Docker Swarm, k8s cluster and so on.

<!--more-->

## Principle

This example uses Nginx as web server to serve Hugo generated static files.

## Create Dockerfile

Create the `Dockerfile` and tweak it as need, such as the fallback 404 page.

{{< bs/collapse "Dockerfile" primary true >}}
{{% code-snippet dockerfile %}}
{{< /bs/collapse >}}

## Test Dockerfile

{{% code-snippet test %}}

Now you're able to test the build image via `https://localhost:8080`.

## Build Docker Image

{{% code-snippet build %}}
