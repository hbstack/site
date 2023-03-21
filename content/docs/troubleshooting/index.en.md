+++
title = "Troubleshooting"
date = 2022-12-19T15:03:19+08:00
draft = false
categories = []
tags = []
series = []
images = []
[nav_icon]
  vendor = "bootstrap"
  name = "bug"
  color = "red"
authors = ["hb"]
+++

## POSTCSS CLI

```cobol
Error: Error building site: POSTCSS: failed to transform "hb/scss/index.css" (text/css). Check your PostCSS installation.
```

The error above will appear if there isn't POSTCSS CLI installed on your environment.

Fix it via the following command.

```bash
sudo npm i -g postcss-cli
```

## RTLCSS

```cobol
POSTCSS: failed to transform "hb/scss/index.rtl.css" (text/css): Plugin Error: Cannot find package 'rtlcss' imported from /usr/lib/node_modules/postcss-cli/index.js'
```

The error above will be reached if there isn't RTLCSS installed on your machine.

Fix this error by

```bash
sudo npm i -g rtlcss
```

## PurgeCSS Configuration

```cobol
Error: Error building site: POSTCSS: failed to transform "hb/scss/index.css" (text/css): Error: Failed to parse runtime PurgeCSS config: Error: ENOENT: no such file or directory, open './public/.build/purgecss.json'.
Please enable the "--renderToDisk" if you are using Hugo server.
```

It happens on the case of using Hugo server on production mode without the `--renderToDisk` flag.
Fixed by appending the `--renderToDisk` flag.

```bash
hugo server -e production --renderToDisk
```

## Hugo Stats File

```cobol
Error: Error building site: POSTCSS: failed to transform "hb/scss/index.css" (text/css): /home/hbstack/Projects/hbstack/hb/purgecss.config.js:5
        throw new Error('Hugo stats file not found, please enable the "build.writeStats".')
        ^
Error: Hugo stats file not found, please enable the "build.writeStats".
```

```toml
build:
  writeStats: true
```

## Autoprefixer

```cobol
Error: Error building site: POSTCSS: failed to transform "hb/scss/index.css" (text/css): Error: Cannot find module '/usr/lib/node_modules/autoprefixer'
```

```bash
sudo npm i -g autoprefixer
```

## POSTCSS PurgeCSS

```cobol
Error: Error building site: POSTCSS: failed to transform "hb/scss/index.css" (text/css): Error: Cannot find module '@fullhuman/postcss-purgecss'
```

```bash
sudo npm i -g @fullhuman/postcss-purgecss
```
