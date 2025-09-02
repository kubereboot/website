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

In a cluster setup your control-plane might have taints that block the kured deployment.

To get the taints of your cluster node you can run the following commands:

```bash
kubectl get nodes ${NODENAME} -o json | jq .spec.taints
```

Alternativly you can also use VS Code to read the whole yaml (or json):

```bash
kubectl get nodes ${NODENAME} -o yaml | code -
```

or use the [describe](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#describe) command:

```bash
kubectl describe nodes ${NODENAME}
```

In this example the control-plane nodes have the following taint:

JSON:

```json
[
  {
    "effect": "NoExecute",
    "key": "CriticalAddonsOnly",
    "value": "true"
  }
]
```

YAML:

```yaml
taints:
- effect: NoExecute
  key: CriticalAddonsOnly
  value: "true"
```

In order to make kured run on these nodes as well we will need to edit the daemonset of the deployment.

You can get a full deployment file by running the followig command:

```bash
# while writing latest is 1.20.0
latest=$(curl -s https://api.github.com/repos/kubereboot/kured/releases | jq -r '.[0].tag_name')
wget "https://github.com/kubereboot/kured/releases/download/$latest/kured-$latest-combined.yaml"
```

In the `kured-1.20.0-combined.yaml` the daemonset has the following tolerations:

```yaml
tolerations:
- key: node-role.kubernetes.io/control-plane
    effect: NoSchedule
- key: node-role.kubernetes.io/master
    effect: NoSchedule
```

In the docs about [taint and toleration](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/) you an read up about the concept.

In Order to tollerate kured on the tainted nodes change this section into:

```yaml
tolerations:
- key: CriticalAddonsOnly
    operator: Exists
```

after applying the `kured-1.20.0-combined.yaml` file you can check the number of pods with:

```bash
kubectl -n kube-system get daemonsets/kured
```

## How do you pronounce `kured`?

You can pronounce it as `cure dee`(IPA: /kjʊəɹdiː/). The D comes from 'daemon', akin to 'systemd'
