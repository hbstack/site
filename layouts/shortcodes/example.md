{{- with .Page.Params.requirements }}
## Requirements
| Module |
| ------ |
{{- range . }}
| `{{ . }}` |
{{- end }}
{{- end }}

## Source Code

<script src="https://emgithub.com/embed-v2.js?target=https://github.com/hbstack/site/blob/main/content/{{ .Page.File.Path }}&style=default&type=code&showBorder=on&showLineNumbers=on&showFileMeta=on&showFullPath=on&showCopy=on"></script>
