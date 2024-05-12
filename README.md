# Helm Chart for Cozy

This is a minimal helm chart for cozy.

## TLDR

As a pre-req, you will need to install [couchDB](https://github.com/apache/couchdb-helm/tree/main/couchdb). Please view the [values.yaml](./charts/cozy-stack/values.yaml) before installing to make sure you don't need to change any default values. There are also some docs generated from the values.yaml in the chart's [README](./charts/cozy-stack/README.md).

```bash
helm repo add cozy https://small-hack.github.io/cozy-helm-chart
helm install cozy/cozy cozy --values values.yaml
```

## Notes

We're using a custom docker image sourced from [jessebot/cozy-stack](https://github.com/jessebot/cozy-stack) and pushed to [docker.io/jessebot/cozy-stack](https://hub.docker.com/r/jessebot/cozy-stack/tags).

The official production docker image is sourced from [cozy/cozy-stack](https://github.com/cozy/cozy-stack) and pushed to [docker.io/cozy/cozy-stack](https://hub.docker.com/r/cozy/cozy-stack/tags), but it cannot run as non-root.


## Status

Archived due to lack of security features upstream. Please checkout [nextcloud/helm](https://github.com/nextcloud/helm) instead.
