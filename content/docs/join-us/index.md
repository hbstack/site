---
title: "Join Us"
date: 2023-04-17T15:25:17+08:00
nav_icon:
  vendor: fas
  name: handshake
  className: text-success
draft: false
series:
categories:
tags:
images:
authors:
  - HB
menu:
  main:
    parent: support
    params:
      description: Get involved.
      icon:
        vendor: fas
        name: handshake
        className: text-success
  footer:
    parent: support
    params:
      description: Get involved.
      icon:
        vendor: fas
        name: handshake
        className: text-success
---

We're glad you plan to join us, and we appreciate any contributions. You can support this project in the following ways.

<!--more-->

## Contributes

1. Please consider giving the [project](https://github.com/hbstack)'s repositories a star :star:, such as the [core module](https://github.com/hbstack/hb) and the [starter theme](https://github.com/hbstack/theme).
2. Please retain the _powered by_ :copyright: information on the footer if possible, or mention it in other places.
3. [Ask and answer questions](https://github.com/orgs/hbstack/discussions/) to help each other.
4. [Share your ideas](https://github.com/orgs/hbstack/discussions/new?category=ideas).
5. [Report issues and bugs](https://github.com/orgs/hbstack/discussions/new?category=issues-and-bugs).
6. [Internationalize module's UI](#i18n).
7. Improve documentations via fixing typos and translating in other languages.
8. Write any article about Hugo on our site, we're happy to create an author page for you, e.g. [HB Authors]({{< relref "/authors/hb" >}}), and link that article to the original one.
9. [Implements features and fix bugs]({{< relref "/docs/develop" >}}).
10. Financial contribution through [Ko-fi](https://ko-fi.com/razonyang) and [PayPal](https://www.paypal.com/paypalme/razonyang).

## I18n

### I18n Guide

> Usually, the i18n messages were placed in `i18n` folder.

1. Fork the repository and clone the fork to local.
1. Determine the [language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes), e.g. `fr` for French.
1. Copy the `i18n/en.toml` to `i18n/fr.toml`.
1. Translate the items in place.
1. Save and push changes to remote repository.
1. [Create a PR](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork) and waiting for reviewing and merging.

You could use GitHub web UI to create file as well.

### I18n Modules

A list of modules that to be internationalized.

- [Hugo Search Module](https://github.com/hugomods/search): `i18n` and `data/search/i18n` folders.
- [PWA](https://github.com/hugomods/pwa)
- [HB Base](https://github.com/hbstack/base)
- [HB Blog](https://github.com/hbstack/blog)
- [HB Breadcrumb](https://github.com/hbstack/breadcrumb)
- [HB Content Panel](https://github.com/hbstack/content-panel)
- [HB Docs](https://github.com/hbstack/docs)
- [HB Gallery](https://github.com/hbstack/gallery)
- [HB No Script](https://github.com/hbstack/noscript)
- [HB Socials](https://github.com/hbstack/socials)
