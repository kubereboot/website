---
author: dholbach
date: 2024-11-12 0:30:00+00:00
title: Learning the ropes of being a maintainer
description: The Kured team gives a quick overview of the inner workings of Kured and explains how easy it is to get involved.
tags: [announcement, community]
---

Kured is only one small star in the [Cloud Native universe](https://landscape.cncf.io/). If you are interested in learning more about what it takes to be a project maintainer, Kured might actually be one of the best ones to get started with.

## What Kured is about

It has a very narrowly defined purpose and is thus quite easy to wrap your head around:

> Kured (KUbernetes REboot Daemon) is a Kubernetes daemonset that performs safe automatic node reboots when the need to do so is indicated by the package management system of the underlying OS.

Unsurprisingly [its main code](https://github.com/kubereboot/kured) is written in Go and its raw functionality currently weighing in at around 2600 lines of code. Add another 1500 lines for CI and build setup.

Started in 2017, it has been out there and supporting users for a long time. It has grown small additions through the years, but the main job of its developers has been to make sure it keeps up to date with Kubernetes releases. Spoiler alert: it hasn't been a lot of work in the last years.

If you take a look at [its configuration options](/docs/configuration) you can get an idea what some of recently added features were about.

## Service to a big Community

Although Kured is still in the [Sandbox category](https://www.cncf.io/sandbox-projects/) at the CNCF, we have big user base which relies on their nodes being seamlessly rebooted after security updates.

Continuing to make sure we update its dependencies for security purposes and making sure new releases are available as soon a new Kubernetes release gets out is hugely appreciated by a big community of users.

## What the work entails

Today we are up at the [1.16.2 release](https://github.com/kubereboot/kured/releases/tag/1.16.2). Every minor release (the next one being `1.17.0`) coincides with a new minor version of Kubernetes. As indicated in our [development docs](/docs/development/), this is usually a very straight-forward matter. Every now and then we get out points releases for updated Alpine images or to bring in security fixes of our dependencies.

## Why now is a great time to get involved

We are in the process of refactoring some of our CI and testing (cf.
[#981](https://github.com/kubereboot/kured/pull/981),
[#982](https://github.com/kubereboot/kured/pull/982),
[#990](https://github.com/kubereboot/kured/pull/990) and other
[currently open PRs](https://github.com/kubereboot/kured/pulls)).
We also took great care to update all our [documentation](/docs) so you find your way around easily.

Together with our great community, we also spotted a [goroutine leak](https://github.com/kubereboot/kured/pull/1015) and took measures to identify issues like this much earlier next time around.

If you always wanted to get your toes wet and learn how a Cloud Native project is written, tested and released, Kured is perfect.

## How you can get involved

We would love to see new people [get involved](/docs/development/). A good first step is obviously to become a user as well, familiarise yourself with its [docs](/docs/) and over time provide small improvements yourself or with PR reviews. We are very happy to make regular and consistent contributors maintainers as well.

A good idea is also to find us in the [#kured channel](https://cloud-native.slack.com/archives/kured) on [CNCF Slack](https://slack.cncf.io). We are a friendly bunch and are happy to welcome you to the team.
