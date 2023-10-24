---
title: FAQ
weight: 5
---

## Why is there no `latest` tag on Docker Hub?

Use of `latest` for production deployments is bad practice - see
[here](https://kubernetes.io/docs/concepts/configuration/overview) for
details. The manifest on `main` refers to `latest` for local
development testing with minikube only; for production use choose a
versioned manifest from the [release page](https://github.com/kubereboot/kured/releases/).

## Make kured run on control-plane with taint

In a cluster setup your control-plane might have the following taint:

```yaml
taints:
  - effect: NoExecute
    key: CriticalAddonsOnly
    value: "true"
```

In order to make kured run on these nodes as well we will need to edit the daemonset of the deployment.

You can get a full deployment file by running the followig command:

```bash
# while writing latest is 1.14.0
latest=$(curl -s https://api.github.com/repos/kubereboot/kured/releases | jq -r '.[0].tag_name')
wget "https://github.com/kubereboot/kured/releases/download/$latest/kured-$latest-dockerhub.yaml"
```

In the `kured-1.14.0-dockerhub.yaml` the daemonset has the following tolerations:

```yaml
tolerations:
    - key: node-role.kubernetes.io/control-plane
        effect: NoSchedule
    - key: node-role.kubernetes.io/master
        effect: NoSchedule
```

In Order to make kured on the tainted nodes change this section into:

```yaml
tolerations:
    - key: CriticalAddonsOnly
        operator: Exists
```

after applying the `kured-1.14.0-dockerhub.yaml` file you can check the number of pods with:

```bash
kubectl -n kube-system get daemonsets/kured
```
