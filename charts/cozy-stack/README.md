# cozy-stack

![Version: 0.4.0](https://img.shields.io/badge/Version-0.4.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.6.15-rc5](https://img.shields.io/badge/AppVersion-1.6.15--rc5-informational?style=flat-square)

A Helm chart for Cozy Stack on Kubernetes

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| jessebot |  | <https://github.com/jessebot> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| couchdb.existingSecret | string | `""` | existing kubernetes secret with couchdb related secret keys: "host", "user", "password", "protocol", "port" |
| couchdb.host | string | `""` | hostname of the couchdb server |
| couchdb.password | string | `""` | password to connection to couchdb with |
| couchdb.port | string | `"5984"` | port to connect to the database over |
| couchdb.protocol | string | `"http"` | connect to couchdb with either http or https |
| couchdb.user | string | `""` | username to connect to couchdb with |
| cozy.adminPassphrase | string | `""` | cozy admin user's password. ignored if cozy.existingSecret is set |
| cozy.configPath | string | `"/etc/cozy"` | file system directory see: https://github.com/cozy/cozy-stack/blob/0fe78134b2d09c73813be48274c66ed8582328e6/cozy.example.yaml#L64 |
| cozy.domain | string | `""` | sharing domain for connecting iwth other cozy friends |
| cozy.existingAdminSecret | string | `""` | existing kubernetes secret containing a key called passphrase |
| cozy.existingConfigSecret | string | `""` | override the default cozy configuration with your own secret that will be mounted at {{ Values.cozy.configPath }} must contain a key called cozy.yaml |
| extraVolumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| extraVolumes | list | `[]` | Additional volumes on the output Deployment definition. |
| fullnameOverride | string | `""` | Overrides the full name of this chart instead of using the release name everywhere |
| image.pullPolicy | string | `"IfNotPresent"` | set to Always if you're using the tag: "latest" |
| image.registry | string | `"docker.io"` | Set the registry for your docker image |
| image.repository | string | `"jessebot/cozy-stack"` | Set the repository for your cozy docker image. Official production image is cozy/cozy-stack but it cannot run as non-root yet |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | secrets to pull your docker private docker image |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `"nginx"` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| livenessProbe.enabled | bool | `true` | enable liveness probes Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes |
| livenessProbe.failureThreshold | int | `15` |  |
| livenessProbe.initialDelaySeconds | int | `10` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.successThreshold | int | `1` |  |
| livenessProbe.timeoutSeconds | int | `10` |  |
| nameOverride | string | `""` | Overrides the name of this chart instead of using the release name everywhere |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext.fsGroup | int | `3552` | group to chown volumes to. If using the production cozy/cozy-stack image, you may need to set this 0 to run as root |
| readinessProbe.enabled | bool | `true` | enable readiness probes Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#container-probes |
| readinessProbe.failureThreshold | int | `15` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.periodSeconds | int | `10` |  |
| readinessProbe.successThreshold | int | `1` |  |
| readinessProbe.timeoutSeconds | int | `10` |  |
| replicaCount | int | `1` | how many pods to deploy of cozy |
| resources | object | `{}` |  |
| securityContext.runAsGroup | int | `3552` | runAsGroup for the cozy container. If using the production cozy/cozy-stack image, you may need to set this 0 to run as root |
| securityContext.runAsUser | int | `3552` | runAsUser for the cozy container. If using the production cozy/cozy-stack image, you may need to set this 0 to run as root |
| service.port | int | `80` |  |
| service.targetPort | int | `8080` | this is the target port on the container |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `"cozy"` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)
