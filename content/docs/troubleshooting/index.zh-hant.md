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
