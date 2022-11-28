---
title: "kured - Kubernetes Reboot Daemon"
linkTitle: "Documentation"
menu:
  main:
    weight: 20
---

## Introduction

Kured (KUbernetes REboot Daemon) is a Kubernetes daemonset that
performs safe automatic node reboots when the need to do so is
indicated by the package management system of the underlying OS.

- Watches for the presence of a reboot sentinel file e.g. `/var/run/reboot-required`
  or the successful run of a sentinel command.
- Utilises a lock in the API server to ensure only one node reboots at
  a time
- Optionally defers reboots in the presence of active Prometheus alerts or selected pods
- Cordons & drains worker nodes before reboot, uncordoning them after
