{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}

{{- define "name" -}}

{{- default .Chart.Name .Values.name | trunc 63 | trimSuffix "-" -}}

{{- end -}}



{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}

{{- define "fullname" -}}

{{- $name := .Values.name }}

{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}

{{- end -}}


{{- define "app" -}}

app: {{ .Values.appname }}
{{- end -}}

{{- define "chart" -}}

chart: "{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}"
version: {{ .Chart.Version }}
{{- end -}}


{{- define "image" -}}

image: {{ .Values.image.repository }}
{{- end -}}