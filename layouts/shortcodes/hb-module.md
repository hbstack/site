{{- $path := .Get 0 }}
{{- $paths := split $path "/" }}
{{- $name := index $paths 0 }}
{{- $prefix := "" }}
{{- if gt (len $paths) 1 }}
  {{- $prefix = delimit (after 1 $paths) "/" }}
{{- end }}
| Module Path | Version |
| ---- | ------- |
| `github.com/hbstack/{{ $path }}` | ![Version](https://img.shields.io/badge/dynamic/json?color=blue&label=version&query=name&url=https://api.razonyang.com/v1/github/tag/hbstack/{{ $name }}?prefix={{ $prefix }}/) |
