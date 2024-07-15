{{- define "deployment.name" -}}
{{- printf "%s-%03d" .Values.baseName .Index -}}
{{- end -}}
