{{/*
Expand the name of the chart.
*/}}
{{- define "cozy-stack.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "cozy-stack.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cozy-stack.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "cozy-stack.labels" -}}
helm.sh/chart: {{ include "cozy-stack.chart" . }}
{{ include "cozy-stack.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "cozy-stack.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cozy-stack.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "cozy-stack.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "cozy-stack.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the name of cozy secret to use
*/}}
{{- define "cozy.secret" -}}
{{- if .Values.cozy.existingSecret }}
{{- .Values.cozy.existingSecret }}
{{- else }}
{{ "cozy-admin-secret" }}
{{- end }}
{{- end }}

{{/*
Create the name of couchdb secret to use
*/}}
{{- define "couchdb.secret" -}}
{{- if .Values.couchdb.existingSecret }}
{{- .Values.couchdb.existingSecret }}
{{- else }}
{{ "couchdb-secret" }}
{{- end }}
{{- end }}
