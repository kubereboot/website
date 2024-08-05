---
author: dholbach
date: 2024-07-08 0:30:00+00:00
title: Learning the ropes of being a maintainer
description: 'The Kured team gives a quick overview of the inner workings of Kured and explains how easy it is to get involved.'
tags: [announcement, community]
---

Kured is only one small star in the [Cloud Native universe](https://landscape.cncf.io/). If you are interested in learning more about what it takes to be a project maintainer, Kured might actually be one of the best ones to get started with.

## What Kured is about

It has a very narrowly defined purpose and is thus quite easy to wrap your head around:

> Kured (KUbernetes REboot Daemon) is a Kubernetes daemonset that performs safe automatic node reboots when the need to do so is indicated by the package management system of the underlying OS.

Unsurprisingly [its main code](https://github.com/kubereboot/kured) is written in Go and its raw functionality currently weighing in at around 2600 lines of code. Add another 1500 lines for CI and build setup.

Started in 2017, it has been out there and supporting users for a long time. It has grown small additions through the years, but the main job of its developers has been to make sure it keeps up to date with Kubernetes releases. Spoiler alert: it hasn't been a lot of work in the last years.

If you take a look at [its configuration options](/docs/configuration) you can get an idea what some of recently added features were about.

## Fame and glory is waiting for you

Although Kured is still in the [Sandbox category](https://www.cncf.io/sandbox-projects/) at the CNCF, we have big user base which relies on their nodes being seamlessly rebooted after security updates.

Continuing to make sure we update its dependencies for security purposes and making sure new releases are available as soon a new Kubernetes release gets out is hugely appreciated by a big community of users.

## How you can get involved

We would love to see new people [get involved](/docs/development/). A good first step is obviously to become a user as well, familiarise yourself with its [docs](/docs/) and over time provide small improvements or with PR reviews.

A good idea is also to find us in the [#kured channel](https://cloud-native.slack.com/archives/C042PSX29DF) on [CNCF Slack](https://slack.cncf.io). We are a friendly bunch and are happy to welcome you to the team.
