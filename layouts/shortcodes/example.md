{{- with .Page.Params.requirements }}
## Requirements
| Module |
| ------ |
{{- range . }}
| `{{ . }}` |
{{- end }}
{{- end }}

## Source Code

{{- $params := newScratch }}
{{- $paramKeys := slice "header" }}
{{- with .Page.Params.example_params }}
  {{- $paramKeys = $paramKeys | append . }}
{{- end }}
{{- range $key := $paramKeys }}
  {{- with index $.Page.Params $key }}
    {{- $params.Set $key . }}
  {{- end }}
{{- end }}

```yaml
---
{{ $params.Values | jsonify | transform.Unmarshal | transform.Remarshal `yaml` -}}
---
```
