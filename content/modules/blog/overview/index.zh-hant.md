---
type: docs
aliases:
  - /zh-hant/docs/modules/blog/overview/
title: "博客概覽"
linkTitle: "概覽"
date: 2023-03-31T15:45:47+08:00
draft: false
nav_weight: 1
series:
  - 文檔
categories:
  - 模塊
tags:
  - 博客
images:
aliases:
  - /zh-hant/docs/modules/blog/archives/
---

博客模塊爲博客站點提供了基本的佈局和模板。

<!--more-->

{{% hb-module blog %}}

## 站點參數

| Parameter                    |  Type   |        Default         | Description                          |
| ---------------------------- | :-----: | :--------------------: | ------------------------------------ |
| `blog.full_width`                 | boolean |        `false`         | 是否全寬。                             |
| `blog.paginate`                   | number  |          `9`           | 每頁博文數量。                       |
| `blog.post_date_format`           | string  |      `:date_long`      | 博文日期格式。                       |
| `blog.post_thumbnail`             | boolean |         `true`         | 是否顯示縮略圖。                     |
| `blog.post_thumbnail_default`     | string  | `images/thumbnail.png` | 相對於 `assets` 文件夾的默認縮略圖。 |
| `blog.post_thumbnail_placeholder` | string  |        站點標題        | 縮略圖佔位符。                       |
| `blog.archives`                   | object  |                        | 歸檔設置。                           |
| `blog.archives.paginate`          | number  |          `30`          | 歸檔每頁博文數量。                   |
| `blog.home`                       | object  |                        | 博客首頁設置。                       |
| `blog.home.featured_posts`        | number  |          `10`          | 特刊博文數量。                       |
| `blog.home.main_sections`         |  array  |           -            | 博文欄目，默認所有欄目。             |
| `blog.home.pinned_posts_position` | string  |        幻燈片右側        | 置頂文章的位置，可選項：`list`。     |
| `blog.home.taxonomies`            | boolean |         `true`         | 是否於首頁顯示分類統計。             |
| `terms.paginate` | number | `12` | 分類列表博文數量。 |

{{< bs/config-toggle params >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}

## 頁面參數

| Name       |  Type   | Default | Description                    |
| ---------- | :-----: | :-----: | ------------------------------ |
| `comments` | boolean | `true`  | 是否顯示評論。                 |
| `featured` | boolean | `false` | 是否於首頁幻燈片中顯示該文章。 |
| `pinned`   | boolean | `false` | 是否於首頁置頂該文章。         |

## 歸檔

博客博客內置了文章歸檔佈局，其可以按年份和月份進行歸檔。你需要手動創建欄目以歸檔文章。

### 創建歸檔欄目

{{% bs/collapse "content/archives/_index.md" primary true %}}
{{% code-snippet archives %}}
{{% /bs/collapse %}}

### 創建按年歸檔欄目

以 `archives/2023/` 爲例。

{{% bs/collapse "content/archives/2023/_index.md" primary true %}}
{{% code-snippet archives-year %}}
{{% /bs/collapse %}}

### 創建按月歸檔欄目

以 `archives/2023/01/` 爲例。

{{% bs/collapse "content/archives/2023/01/_index.md" primary true %}}
{{% code-snippet archives-month %}}
{{% /bs/collapse %}}
