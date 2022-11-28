---
title: Operation
weight: 3
---

The example commands in this section assume that you have not
overriden the default lock annotation, daemonset name or namespace;
if you have, you will have to adjust the commands accordingly.

## Testing

You can test your configuration by provoking a reboot on a node:

```console
sudo touch /var/run/reboot-required
```

## Disabling Reboots

If you need to temporarily stop kured from rebooting any nodes, you
can take the lock manually:

```console
kubectl -n kube-system annotate ds kured weave.works/kured-node-lock='{"nodeID":"manual"}'
```

Don't forget to release it afterwards!

## Manual Unlock

In exceptional circumstances, such as a node experiencing a permanent
failure whilst rebooting, manual intervention may be required to
remove the cluster lock:

```console
kubectl -n kube-system annotate ds kured weave.works/kured-node-lock-
```

> NB the `-` at the end of the command is important - it instructs
> `kubectl` to remove that annotation entirely.

## Automatic Unlock

In exceptional circumstances (especially when used with cluster-autoscaler) a node
which holds lock might be killed thus annotation will stay there for ever.

Using `--lock-ttl=30m` will allow other nodes to take over if TTL has expired (in this case 30min) and continue reboot process.

## Delaying Lock Release

Using `--lock-release-delay=30m` will cause nodes to hold the lock for the specified time frame (in this case 30min) before it is released and the reboot process continues. This can be used to throttle reboots across the cluster.
