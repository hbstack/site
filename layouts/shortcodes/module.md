{{- $name := .Get 0 }}
{{- $prefix := default "" (.Get 1) }}
{{- $api := printf
  "https://api.razonyang.com/v1/github/tag/%s/?prefix=%s"
  (replace $name "github.com/" "")
  $prefix
}}
| Module Path | Version |
| ---- | ------- |
| `{{ $name }}` | ![Version](https://img.shields.io/badge/dynamic/json?color=blue&label=version&query=name&url={{ $api }}/) |
