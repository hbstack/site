---
title: "安裝"
date: 2023-02-17T15:53:42+08:00
draft: false
nav_weight: 3
series:
  - 文檔
categories:
  - 安裝
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

我們提供了一個[入門主題模板](https://github.com/hbstack/theme)，以便你快速地創建一個 HB 站點。

<!--more-->

## 安裝

一分鐘安裝 HB 主題。

{{< asciinema id=576711 speed=2 >}}

由於有不少圖片，Hugo 服務器在第一次運行時需要很長的時間來處理。你需要刪除無用的圖片和提交 `resources/images` 文件夾以提高構建性能。

### 克隆倉庫

{{% code-snippet clone %}}

其中的 `blog` 是本地目錄名稱，請隨意修改。

### 模塊路徑

首先修改位於 `go.mod` 的模塊路徑，將其中的 `module github.com/hbstack/theme` 替換爲你的，如：`module github.com/user/repo`。

```sh
sed -i -e 's/module\ github.com\/hbstack\/theme/module\ github.com\/user\/repo/' go.mod
```

### 推送到遠程倉庫

#### 提交改動

```sh
git add .

git commit --amend
```

修改提交信息保存即可，如：`First commit`。

#### 修改遠程倉庫

```sh
git remote set-url origin https://github.com/user/repo
```

#### 推送

```sh
git push origin main
```

## Hugo 模塊代理（可選）

如果你在中國大陸沒有 VPN，Hugo 模塊的下載可能會失敗。另請參閱[Go 和 Hugo 代理服務器](https://hugomods.com/zh-hans/blog/2023/04/go-和-hugo-代理服務器/)。

## 安裝構建工具

```sh
npm ci
```

請注意 Go 和 Node.js 是必要條件，詳情請參閱[構建工具]({{< relref "docs/getting-started/prerequisites#build-tools" >}})。

## 啓動 Hugo 服務器

### 於開發模式下預覽

```sh
npm run dev
```

### 於生產模式下預覽

```sh
npm run prod
```

## 下一步

- 調整[配置]({{< ref "docs/configuration" >}})和參數，如 `baseURL`、`giscus.*` 等。
- 移除不需要的配置、菜單、內容、圖片和 GitHub actions（workflows）。
- 創建[內容]({{< ref "docs/content" >}})。
- [部署站點]({{< ref "docs/deployment" >}})。
