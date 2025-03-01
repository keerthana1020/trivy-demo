{{- define "trivy.fullname" -}}
{{ .Release.Name }}-trivy
{{- end }}

{{- define "trivy.serviceAccountName" -}}
{{ if .Values.serviceAccount.create }}{{ .Release.Name }}-trivy{{ else }}{{ .Values.serviceAccount.name }}{{ end }}
{{- end }}
