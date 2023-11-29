# Helm Chart for Cozy

I wanted to try my hand at making a helm chart for Cozy, because why not 🤷 I've got nothing better to do (I absolutely have better things to do but don't want to)

We're using this docker image: https://hub.docker.com/r/cozy/cozy-stack/tags
which is hosted here: https://github.com/cozy/cozy-stack

## TLDR

You need to have couchDB up and running right now, but I'll probably add a sub-chart for that later.

```bash
helm repo add cozy https://small-hack.github.io/cozy-helm-chart
helm install cozy/cozy cozy
```
