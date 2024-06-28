{{- define "genProject" -}}
{{- $unique := dict -}}
{{- range $appName, $appSpec := .Values.apps -}}
  {{- $project := default $.Values.global.project $appSpec.project -}}
  {{- if not (hasKey $unique $project) -}}
    {{- $unique = set $unique $project true -}}
  {{- end -}}
{{- end -}}
{{- $uniqueKeys := keys $unique -}}
{{- sortAlpha $uniqueKeys -}}
{{- end -}}