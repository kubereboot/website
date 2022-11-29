---
title: Building
weight: 4
---

Kured now uses [Go
Modules](https://github.com/golang/go/wiki/Modules), so build
instructions vary depending on where you have checked out the
repository:

**Building outside $GOPATH:**

```console
make
```

**Building inside $GOPATH:**

```console
GO111MODULE=on make
```

You can find the current preferred version of Golang in the [go.mod file](https://github.com/kubereboot/kured/blob/main/go.mod).

If you are interested in contributing code to kured, please take a look at
our [development][development] docs.

[development]: /docs/development
