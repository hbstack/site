{{- $overview := site.GetPage "modules/overview" }}
{{- $path := .Get 0 }}
{{- $paths := split $path "/" }}
{{- $name := index $paths 0 }}
{{- $filter := "" }}
{{- if gt (len $paths) 1 }}
  {{- $filter = delimit (after 1 $paths) "/" | printf "%s*" }}
{{- end }}
{{- $repoURL := printf "https://github.com/hbstack/%s" $name }}

| Module | <code class="user-select-all">github.com/hbstack/{{ $path }}</code> |
| ---- | ------- |
| Repository | ⭐ Please consider [giving a star]({{ $repoURL }}) if your like it. |
| Stars | <a href="{{ $repoURL }}/stargazers" target="_blank"><img title="GitHub repo stars" height="26" src="https://img.shields.io/github/stars/hbstack/{{ $name }}?style=flat-square"></a> |
| Version | <a href="{{ $repoURL }}/releases" target="_blank"><img title="Releases" src="https://img.shields.io/github/v/tag/hbstack/{{ $name }}?style=flat-square{{ with $filter }}&filter={{ . }}{{ end }}" height="26"></a> |
| Used by | <a href="{{ $repoURL }}/network/dependents" target="_blank"><img title="Used by" height="26" src="https://img.shields.io/badge/dynamic/json?color=success&label=used+by&query=repositories_humanize&logo=hugo&style=flat-square&url=https://api.razonyang.com/v1/github/dependents/hbstack/{{ $name }}"></a> |
| Requirements | <a href="{{ $repoURL }}" target="_blank"><img title="Hugo requirements" src="https://img.shields.io/badge/dynamic/json?color=important&label=requirements&query=requirements&logo=hugo&style=flat-square&url=https://api.razonyang.com/v1/hugo/modules/github.com/hbstack/{{ $name }}" height="26"></a> |
| License | <a href="{{ $repoURL }}/blob/main/LICENSE" target="_blank"><img title="License" src="https://img.shields.io/github/license/hbstack/{{ $name }}?style=flat-square" height="26"></a>
| Usage | See [how to use modules]({{ $overview.RelPermalink }}). |
