---
title: Configuration
weight: 2
---

The following arguments can be passed to kured via the daemonset pod template:

```console
Kubernetes Reboot Daemon

Usage:
  kured [flags]

Flags:
      --alert-filter-regexp regexp.Regexp   alert names to ignore when checking for active alerts
      --alert-filter-match-only             Only block if the alert-filter-regexp matches active alerts
      --alert-firing-only                   only consider firing alerts when checking for active alerts
      --annotate-nodes                      if set, the annotations 'weave.works/kured-reboot-in-progress' and 'weave.works/kured-most-recent-reboot-needed' will be given to nodes undergoing kured reboots
      --blocking-pod-selector stringArray   label selector identifying pods whose presence should prevent reboots
      --drain-delay duration                delay drain for this duration (default: 0, disabled)
      --drain-grace-period int              time in seconds given to each pod to terminate gracefully, if negative, the default value specified in the pod will be used (default -1)
      --drain-pod-selector string           only drain pods with labels matching the selector (default: '', all pods)
      --drain-timeout duration              timeout after which the drain is aborted (default: 0, infinite time)
      --ds-name string                      name of daemonset on which to place lock (default "kured")
      --ds-namespace string                 namespace containing daemonset on which to place lock (default "kube-system")
      --end-time string                     schedule reboot only before this time of day (default "23:59:59")
      --force-reboot                        force a reboot even if the drain fails or times out
  -h, --help                                help for kured
      --lock-annotation string              annotation in which to record locking node (default "weave.works/kured-node-lock")
      --lock-release-delay duration         delay lock release for this duration (default: 0, disabled)
      --lock-ttl duration                   expire lock annotation after this duration (default: 0, disabled)
      --log-format string                   use text or json log format (default "text")
      --message-template-drain string       message template used to notify about a node being drained (default "Draining node %s")
      --message-template-reboot string      message template used to notify about a node being rebooted (default "Rebooting node %s")
      --message-template-uncordon string    message template used to notify about a node being successfully uncordoned (default "Node %s rebooted & uncordoned successfully!")
      --metrics-host string                 host where metrics will listen (default "")
      --metrics-port int                    port number where metrics will listen (default 8080)
      --node-id string                      node name kured runs on, should be passed down from spec.nodeName via KURED_NODE_ID environment variable
      --notify-url string                   notify URL for reboot notifications (cannot use with --slack-hook-url flags)
      --period duration                     sentinel check period (default 1h0m0s)
      --post-reboot-node-labels strings     labels to add to nodes after uncordoning
      --pre-reboot-node-labels strings      labels to add to nodes before cordoning
      --prefer-no-schedule-taint string     Taint name applied during pending node reboot (to prevent receiving additional pods from other rebooting nodes). Disabled by default. Set e.g. to "weave.works/kured-node-reboot" to enable tainting.
      --prometheus-url string               Prometheus instance to probe for active alerts
      --reboot-command string               command to run when a reboot is required (default "/bin/systemctl reboot")
      --reboot-days strings                 schedule reboot on these days (default [su,mo,tu,we,th,fr,sa])
      --reboot-delay duration               delay reboot for this duration (default: 0, disabled)
      --reboot-method                       method to use for reboots (default command), available: command, signal
      --reboot-signal                       signal to use for reboots (default 39 = SIGRTMIN+5).
      --reboot-sentinel string              path to file whose existence triggers the reboot command (default "/var/run/reboot-required")
      --reboot-sentinel-command string      command for which a zero return code will trigger a reboot command
      --skip-wait-for-delete-timeout int    when seconds is greater than zero, skip waiting for the pods whose deletion timestamp is older than N seconds while draining a node
      --slack-channel string                slack channel for reboot notifications
      --slack-hook-url string               slack hook URL for reboot notifications [deprecated in favor of --notify-url]
      --slack-username string               slack username for reboot notifications (default "kured")
      --start-time string                   schedule reboot only after this time of day (default "0:00")
      --time-zone string                    use this timezone for schedule inputs (default "UTC")
      --concurrency number                  amount of nodes to concurrently reboot. (default 1)
```

## Reboot Sentinel File & Period

By default kured checks for the existence of
`/var/run/reboot-required` every sixty minutes; you can override these
values with `--reboot-sentinel` and `--period`. Each replica of the
daemon uses a random offset derived from the period on startup so that
nodes don't all contend for the lock simultaneously.

## Reboot Sentinel Command

Alternatively, a reboot sentinel command can be used. If a reboot
sentinel command is used, the reboot sentinel file presence will be
ignored. When the command exits with code `0`, kured will assume
that a reboot is required.

For example, if you're using RHEL or its derivatives, you can
set the sentinel command to `sh -c "! needs-restarting --reboothint"`
(by default the command will return `1` if a reboot is required,
so we wrap it in `sh -c` and add `!` to negate the return value).

```yaml
configuration:
  rebootSentinelCommand: sh -c "! needs-restarting --reboothint"
```

## Setting a schedule

By default, kured will reboot any time it detects the sentinel, but this
may cause reboots during odd hours.  While service disruption does not
normally occur, anything is possible and operators may want to restrict
reboots to predictable schedules.  Use `--reboot-days`, `--start-time`,
`--end-time`, and `--time-zone` to set a schedule.  For example, business
hours on the west coast USA can be specified with:

```console
  --reboot-days=mon,tue,wed,thu,fri
  --start-time=9am
  --end-time=5pm
  --time-zone=America/Los_Angeles
```

Times can be formatted in numerous ways, including `5pm`, `5:00pm` `17:00`,
and `17`.  `--time-zone` represents a Go `time.Location`, and can be `UTC`,
`Local`, or any entry in the standard Linux tz database.

Note that when using smaller time windows, you should consider shortening
the sentinel check period (`--period`).

## Blocking Reboots via Alerts

You may find it desirable to block automatic node reboots when there
are active alerts - you can do so by providing the URL of your
Prometheus server:

```console
--prometheus-url=http://prometheus.monitoring.svc.cluster.local
```

By default the presence of *any* active (pending or firing) alerts
will block reboots, however you can ignore specific alerts:

```console
--alert-filter-regexp=^(RebootRequired|AnotherBenignAlert|...$
```

You can also only block reboots for firing alerts:

```console
--alert-firing-only=true
```

When inverting the matching-logic, only matching alerts can block a reboot:

```console
--alert-filter-match-only=true
```

See the section on Prometheus metrics for an important application of this
filter.

## Blocking Reboots via Pods

You can also block reboots of an *individual node* when specific pods
are scheduled on it:

```console
--blocking-pod-selector=runtime=long,cost=expensive
```

Since label selector strings use commas to express logical 'and', you can
specify this parameter multiple times for 'or':

```console
--blocking-pod-selector=runtime=long,cost=expensive
--blocking-pod-selector=name=temperamental
```

In this case, the presence of either an (appropriately labelled) expensive long
running job or a known temperamental pod on a node will stop it rebooting.

> Try not to abuse this mechanism - it's better to strive for
> restartability where possible. If you do use it, make sure you set
> up a RebootRequired alert as described in the next section so that
> you can intervene manually if reboots are blocked for too long.

## Adding node labels before and after reboots

If you need to add node labels before and after the reboot process, you can use `--pre-reboot-node-labels` and `--post-reboot-node-labels`:

```console
      --pre-reboot-node-labels=zalando=notready
      --post-reboot-node-labels=zalando=ready
```

Labels can be comma-delimited (e.g. `--pre-reboot-node-labels=zalando=notready,thisnode=disabled`) or you can supply the flags multiple times.

Note that label keys specified by these two flags should match. If they do not match, a warning will be generated.

## Prometheus Metrics

Each kured pod exposes a single gauge metric (`:8080/metrics`) that
indicates the presence of the sentinel file:

```console
# HELP kured_reboot_required OS requires reboot due to software updates.
# TYPE kured_reboot_required gauge
kured_reboot_required{node="ip-xxx-xxx-xxx-xxx.ec2.internal"} 0
```

Note: Use `--metrics-host` and/or `--metrics-port` to set a different address
where metrics should listen. The values of these flags will be put together
like `<host>:<port>` to define a complete listen address for the metrics
server.

The purpose of this metric is to power an alert which will summon an
operator if the cluster cannot reboot itself automatically for a
prolonged period:

```console
# Alert if a reboot is required for any machines. Acts as a failsafe for the
# reboot daemon, which will not reboot nodes if there are pending alerts save
# this one.
ALERT RebootRequired
  IF          max(kured_reboot_required) != 0
  FOR         24h
  LABELS      { severity="warning" }
  ANNOTATIONS {
    summary = "Machine(s) require being rebooted, and the reboot daemon has failed to do so for 24 hours",
    impact = "Cluster nodes more vulnerable to security exploits. Eventually, no disk space left.",
    description = "Machine(s) require being rebooted, probably due to kernel update.",
  }
```

If you choose to employ such an alert and have configured kured to
probe for active alerts before rebooting, be sure to specify
`--alert-filter-regexp=^RebootRequired$` to avoid deadlock!

## Notifications

When you specify a formatted URL using `--notify-url`, kured will notify
about draining and rebooting nodes across a list of technologies.

![Notification](/img/slack-notification.png)

Alternatively you can use the `--message-template-drain`, `--message-template-reboot` and `--message-template-uncordon` to customize the text of the message, e.g.

```cli
--message-template-drain="Draining node %s part of *my-cluster* in region *xyz*"
```

Here is the syntax:

- slack:           `slack://tokenA/tokenB/tokenC`

    (`slack://<USERNAME>@tokenA/tokenB/tokenC` - in case you want to [respect username](https://github.com/kubereboot/kured/issues/482))

    (`--slack-hook-url` is deprecated but possible to use)

  For the new slack App integration, use:\
    `slack://xoxb:123456789012-1234567890123-4mt0t4l1YL3g1T5L4cK70k3N@<CHANNEL_NAME>?botname=<BOTNAME>`\
    for more information, [look here](https://containrrr.dev/shoutrrr/v0.7/services/slack/#examples)

- rocketchat:      `rocketchat://[username@]rocketchat-host/token[/channel|@recipient]`

- teams:           `teams://group@tenant/altId/groupOwner?host=organization.webhook.office.com`

- Email:           `smtp://username:password@host:port/?fromAddress=fromAddress&toAddresses=recipient1[,recipient2,...]`

More details here: [containrrr.dev/shoutrrr/v0.7/services/overview](https://containrrr.dev/shoutrrr/v0.7/services/overview)

## Overriding Lock Configuration

The `--ds-name` and `--ds-namespace` arguments should match the name and
namespace of the daemonset used to deploy the reboot daemon - the locking is
implemented by means of an annotation on this resource. The defaults match
the daemonset YAML provided in the repository.

Similarly `--lock-annotation` can be used to change the name of the
annotation kured will use to store the lock, but the default is almost
certainly safe.

## Concurrent reboots

> Note: Concurrent reboots are not save for production environments as
> there are no safeguards related to workloads on simultaneously rebooted nodes.

The `--concurrency` argument can be configured to reboot multiple nodes at once.
E.g. with `--concurrency=3` it would be allowed to reboot three nodes concurrently on max.
This is useful for development clusters where interruptions of workloads are okay.
