---
type: docs
aliases:
  - /zh-hant/docs/modules/blog/overview/
title: "博客概覽"
linkTitle: "概覽"
date: 2023-03-31T15:45:47+08:00
draft: false
nav_weight: 1
nav_icon:
  vendor: bs
  name: file-richtext
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

博客模塊為博客站點提供了基本的佈局和模板。

<!--more-->

{{% hb-module blog %}}

## 站點參數

| Parameter                    |  Type   |        Default         | Description                          |
| ---------------------------- | :-----: | :--------------------: | ------------------------------------ |
| ~~`blog.full_width`~~                 | boolean |        `false`         | 是否全寬。                             |
| `blog.list_cols_md` | number | `2` | 於 `md` 斷點下，列表每行的文章數目。
| `blog.list_cols_lg` | number | `3` | 於 `lg` 斷點下，列表每行的文章數目。 |
| `blog.list_pinned_posts` | number / boolean | `1` | 置頂文章數量，`false` 時禁用。 |
| `blog.paginate`                   | number  |          `9`           | 每頁博文數量。                       |
| `blog.post_date_format`           | string  |      `:date_long`      | 博文日期格式。                       |
| `blog.post_read_more`             | boolean |         `true`         | 是否顯示閱讀更多按鈕。                |
| `blog.post_thumbnail`             | boolean |         `true`         | 是否顯示縮略圖。                     |
| `blog.post_thumbnail_default`     | string  | `images/thumbnail.png` | 相對於 `assets` 文件夾的默認縮略圖。 |
| `blog.post_thumbnail_height`      | string  |        `160px`         | 縮略圖高度。                        |
| `blog.post_thumbnail_placeholder` | string  |        站點標題        | 縮略圖佔位符。                       |
| `blog.post_thumbnail_position`    | string  |          `top`         | 縮略圖的位置，`start` 或 `top`。      |
| `blog.post_thumbnail_resize_height` | string |         `360`         | 縮略圖縮放的高度。                    |
| `blog.archives`                   | object  |                        | 歸檔設置。                           |
| `blog.archives.paginate`          | number  |          `30`          | 歸檔每頁博文數量。                   |
| `blog.home`                       | object  |                        | 博客首頁設置。                       |
| `blog.home.featured_posts`        | number  |          `10`          | 特刊博文數量。                       |
| `blog.home.main_sections`         |  array  |           -            | 博文欄目，默認所有欄目。             |
| `blog.home.pinned_posts_position` | string  |        幻燈片右側        | 置頂文章的位置，可選項：`list`。     |
| `blog.home.taxonomies`            | boolean |         `true`         | 是否於首頁顯示分類統計。             |
| `blog.toc.position` | string | `end` | `start`：內容左側、`end`：內容右側、`content`：內容上方。
| `blog.list_style` | string | - | 空字符串、`minimalist`、`cascade`。 |
| `terms.list_style` | string | - | 空字符串、`minimalist`、`cascade`。 |
| `terms.paginate` | number | `12` | 分類列表博文數量。 |
| `terms.profile` | boolean | `true` | 為 `false` 時，隱藏簡介。 |
| `terms.profile_metrics` | boolean | `true` |  為 `false` 時，隱藏簡介上的指標。 |

{{< bs/config-toggle params >}}
{{% code-snippet params.yaml %}}
{{< /bs/config-toggle >}}

## 頁面參數

| Name       |  Type   | Default | Description                    |
| ---------- | :-----: | :-----: | ------------------------------ |
| `comments` | boolean | `true`  | 是否顯示評論。                 |
| `external_url` | string |  -   | 外部文章 URL。                 |
| `featured` | boolean | `false` | 是否於首頁幻燈片中顯示該文章。 |
| `pinned`   | boolean | `false` | 是否於首頁置頂該文章。         |
| `toc`      | boolean | `true`  | 是否顯示文章目錄。            |
| `main_sections` | array | `[]` | 為列表頁指定不同於 `blog.home.main_sections` 的主要欄目。 |
| `meta`     | boolean/object | `true` | 為 `false` 時，禁用所有元信息。 |
| `meta.authors` | boolean | `true` | 為 `false` 時，禁用作者元信息。|
| `meta.date`    | boolean | `true` | 為 `false` 時，禁用日期元信息。|
| `meta.reading_time` | boolean | `true` | 為 `false` 時，禁用閱讀時長元信息。|
| `meta.taxonomies` | boolean | `true` | 為 `false` 時，禁用專欄、分類和標籤元信息。|
| `meta.first_section` | boolean | `true` |  是否顯示文章的根欄目。 |
| `sidebar` | boolean | `true` | 是否顯示側邊欄。 |

## 歸檔

博客博客內置了文章歸檔佈局，其可以按年份和月份進行歸檔。你需要手動創建欄目以歸檔文章。

### 創建歸檔欄目

{{% bs/collapse "content/archives/_index.md" primary true %}}
{{% code-snippet archives %}}
{{% /bs/collapse %}}

### 創建按年歸檔欄目

以 `archives/2023/` 為例。

{{% bs/collapse "content/archives/2023/_index.md" primary true %}}
{{% code-snippet archives-year %}}
{{% /bs/collapse %}}

### 創建按月歸檔欄目

以 `archives/2023/01/` 為例。

{{% bs/collapse "content/archives/2023/01/_index.md" primary true %}}
{{% code-snippet archives-month %}}
{{% /bs/collapse %}}
