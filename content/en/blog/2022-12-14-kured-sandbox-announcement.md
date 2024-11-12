---
author: dholbach
date: 2022-12-14 8:30:00+00:00
title: Kured joins the CNCF Sandbox
description: 'Kured is now part of the Cloud Native Computing Foundation!'
url: /blog/2022/12/kured-joins-the-cncf-sandbox/
tags: [announcement]
---

## If you are new to Kured

<div class="w-25 pr-5">
  <img class="img-fluid float-left" src="/img/kured.png" alt="Kured logo" />
</div>

Kured is the Kubernetes Reboot Daemon - it helps perform safe automatic
node reboots, when indicated by the package management of the underlying
OS. It was [first announced in November
2017](https://www.weave.works/blog/announcing-kured-a-kubernetes-reboot-daemon)
as a project to facilitate safe reboots across the cluster, which
accelerates the rollout of critical OS security fixes to Kubernetes
clusters. Automation makes everything better indeed.

Since 2020 a small team of contributors [has taken over
development](https://www.weave.works/blog/one-year-kured-kubernetes-reboot-daemon)
from Adam Harrison, its original creator. Kured regularly publishes
[new minor version releases](/docs/installation/) to coincide
with new minor version releases of Kubernetes.

During 2022 we received permission from Alexis Richardson, the CEO of
Weaveworks to donate Kured to the Cloud Native Computing Foundation. We
are very pleased to announce that as of late 2022, this is our new home.

> *Weaveworks has always believed that infrastructure software benefits
> from open-source development. Kured is a terrific example because of
> how many practitioners have come together around such an important
> part of the Kubernetes management workflow. Like all of Weaveworks
> tools it also showcases the value of automation and security. We are
> proud to see it in the CNCF as our third project after Cortex and
> Flux.*
>
> -- Alexis Richardson, Weaveworks CEO

## What has happened since then

Among many other things, we

- transitioned Kured to its new home: <https://github.com/kubereboot>
- set up [Kured project
  governance](https://github.com/kubereboot/kured/blob/main/GOVERNANCE.md)
  following the recommendations of CNCF's Contributor Strategy
  Technical Advisory Group
- set up a preliminary home page at <https://kured.dev> - any help
  making the site really shine would be appreciated!
- started updating our presence on
  [CLOMonitor](https://clomonitor.io/projects/cncf/kured)
  (we are up to 89% completion already!) and claimed our
  [ArtifactHub](https://artifacthub.io/packages/helm/kured/kured)
  entry as well
- created a [Twitter account](https://twitter.com/kubereboot) and a
  [mailing list](https://lists.cncf.io/g/cncf-kured-dev) and
- moved all of our other infrastructure over to CNCF resources, e.g.
  [our Slack channel](https://cloud-native.slack.com/archives/kured)
  and more

[1.12.0](https://github.com/kubereboot/kured/releases/tag/1.12.0)
was the latest release, which was tested against Kubernetes 1.26. In the
previous release 1.11.0 we introduced the build tools GoReleaser, Cosign
and Syft.

## 💖 Together with you: Onwards and Upwards

We are thrilled to be part of the CNCF now and we would love you to join
our project. We are a small team of maintainers, our project is easy to
get involved with and used a lot (we seem to have quite a few [friends
in the AKS
community](https://learn.microsoft.com/en-us/azure/aks/node-updates-kured)).

We would love your involvement and support! Here are your first steps to
get involved:

- Join us in \#kured on [CNCF Slack](https://slack.cncf.io)
- [Follow us on Twitter](https://twitter.com/kubereboot)
- Give us [a star on GitHub](https://github.com/kubereboot/kured)
- Please give us feedback
- And [get involved in Kured](/docs/development/) as a contributor

We are looking forward to you joining us!
