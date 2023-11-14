+++
title = "问题排查"
description = "已知问题清单和相应的解决方案。"
date = 2022-12-19T15:03:19+08:00
draft = false
nav_weight = 1000
categories = []
tags = []
series = []
images = []
[nav_icon]
  vendor = "bootstrap"
  name = "bug"
  color = "red"
authors = ["HB"]
+++

## POSTCSS CLI

{{% code-snippet postcss-cli-error %}}

The error above will appear if there isn't POSTCSS CLI installed on your environment.

{{% code-snippet postcss-cli-solution %}}

## RTLCSS

{{% code-snippet rtlcss-error %}}

The error above will be reached if there isn't RTLCSS installed on your machine.

{{% code-snippet rtlcss-solution %}}

## PurgeCSS Configuration

{{% code-snippet purgecss-error %}}

It happens on the case of using Hugo server on production mode without the `--renderToDisk` and `--disableFastRender` flags.

{{% code-snippet purgecss-solution %}}

## Hugo Stats File

{{% code-snippet hugo-stats-error %}}

{{% bs/config-toggle hugo %}}
{{% code-snippet hugo-stats-solution %}}
{{% /bs/config-toggle %}}

## Autoprefixer

{{% code-snippet autoprefixer-error %}}

{{% code-snippet autoprefixer-solution %}}

## POSTCSS PurgeCSS

{{% code-snippet postcss-purgecss-error %}}

{{% code-snippet postcss-purgecss-solution %}}

## 效率极低的构建性能

导致网站构建速度减慢的因素有很多，下面列出了一些常见的因素。

1. 低效的磁盘 IO 性能，如外部磁盘。
1. Windows Defender 或其他杀毒软件的实时保护。
1. 同步软件（如 OneDrive、NutStore）正在监视发布文件夹。

我们建议在固态硬盘等高性能磁盘上构建网站。如果可能，还建议在 Linux 系统上构建，因为它通常比 Windows 等其他操作系统更快。

> 对于 Windows 用户来说，WSL2 是一个不错的选择。
