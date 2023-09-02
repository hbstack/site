{{- with .Page.Params.requirements }}
## Requirements
| Module |
| ------ |
{{- range . }}
| `{{ . }}` |
{{- end }}
{{- end }}

## Source Code

See https://github.com/hbstack/site/blob/main/{{ .Page.File.Path }}.
