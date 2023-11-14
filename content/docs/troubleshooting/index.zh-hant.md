+++
title = "問題排查"
description = "已知問題清單和相應的解決方案。"
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

## 效率極低的構建性能

導致網站構建速度減慢的因素有很多，下面列出了一些常見的因素。

1. 低效的磁盤 IO 性能，如外部磁盤。
1. Windows Defender 或其他殺毒軟件的實時保護。
1. 同步軟件（如 OneDrive、NutStore）正在監視發佈文件夾。

我們建議在固態硬盤等高性能磁盤上構建網站。如果可能，還建議在 Linux 系統上構建，因為它通常比 Windows 等其他操作系統更快。

> 對於 Windows 用戶來說，WSL2 是一個不錯的選擇。
