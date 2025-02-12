---
title: Community
weight: 10
---

## Getting Help

If you have any questions about, feedback for or problems with `kured`:

- Invite yourself to the <a href="https://slack.cncf.io/" target="_blank">CNCF Slack</a> and
  ask a question on the [#kured](https://cloud-native.slack.com/archives/kured) slack channel.
- [File an issue](https://github.com/kubereboot/kured/issues/new).
- You might want to [join the kured-dev mailing list](https://lists.cncf.io/g/cncf-kured-dev) as well.

We follow the [CNCF Code of Conduct](https://github.com/kubereboot/kured/blob/main/CODE_OF_CONDUCT.md).

Your feedback is always welcome!

## Next Meeting

Meetings are currently on hold, as we do not need synchronous meetings at the moment.

If you need to call for a synchronous meeting, do not hesitate to ask for it on slack.

## Past Meetings

### 2024-06-06 1600 UTC

Attendees:

- Christian Hopf
- Daniel Holbach
- Jack Francis
- Jean-Philippe Evrard

Agenda:

- Farewell Daniel, thanks for your help! A summary of recent events for community, and our next steps:
  - Reflecting on CNCF Sandbox and a move to Incubation:
    - Moving to Sandbox did not magically grow the community by the announcements or the move to sandbox.
    - The traditional path for Sandbox -> Incubation depends on factors which are not fitting or kured:
      - We are "mature" and no big developments happen.
      - We have plenty of users, but they are not shown with testimonials.
        Evidence was during docker change of policies, or when our repository moved to kubereboot. In those case, we got issues and questions to ask for the help. We have realised we have many users, but silent ones.
    - CNCF Sandbox gets you access to some resources to increase visibility.
      Yet, it's only the basics (slack, domain...).
    - We could stay at the level we want.
      We could stay a CNCF Sandbox project forever but there is no value for us for doing so.
    - CNCF Incubation gets you a booth at kubecon, maintainers get free tickets. Blog posts are possible.
      Marketing is easier to have outreach. This could be good for growth of kured.
    - Problem with Incubation is that the process takes a long time, requiring customer user stories.
      In our case, the customer story would be all the same:
      "We needed to reboot our cluster, and there was a solution available".
      This process would therefore not be suited for kured. Is kured too small?
    - The attendees had a general consensus about the need to move to at least Incubation, or reconsider.
    - Jack summarised the multiple paths:
      - The project becomes "too big to fail".
        In this case, the project follow the usual path of incubation, ...
      - Reconsider CNCF path, and think about donating kured to an existing SIG.
        With Kubernetes SIG, you get SIG support for free.
        SIG node, SIG cluster lifecycle, SIG scheduling, or SIG apps would be a good place.
      - Make the feature core of Kubernetes and deprecated kured.
        JP mentions we tried that in the past.
        It was not the direction taken by the Kubernetes community.
        It is also very weird to have a core feature that interconnects with monitoring or alerting systems.
    - We agreed on evaluating the first two paths in parallel:
      - ACTION: Jack: contact the SIGs, and evaluate a good SIG willing to host us.
      - ACTION: Daniel: contact Chris A. to mention his departure for the project, and mention the issues
        about Incubation.

  - Pronouncing `kured`. We generally agree to keep the "d" of systemd or "daemon".
    Hence we pronounced the project as `cure` `Dee`.
- Writing meeting minutes:
  - We discussed about writing meeting minutes in markdown.
  - ACTION: Jean-Philippe: Import meeting minutes in docs.

### 2022-11-02 16:00 UTC

Link to Recording … not available. We forgot to record!

Attendees:

- Christian Kotzbauer
- Daniel Holbach

Agenda/Notes:

- Introductions - anyone new to the call?
- Daniel: fix calendar
- Review actions from the last meeting:
  - Governance: Daniel to push branch add-governance, targetting main tree to iterate it together.
  - ACTION: Jack to review if we can make use of testgrid.k8s.io somehow
- 1.11.0 release:
  - Decide to release now. <https://artifacthub.io/packages/helm/kured/kured?modal=security-report> shows security issues which would be fixed this way.
  - [Bring back tests](https://github.com/kubereboot/kured/issues/647) later on.
  - ACTION: Christian to publish release.
- Sandbox announcement:
  - ACTION: Daniel to write Kured Sandbox Announcement

### 2022-10-05 16:00 UTC

[Link to Recording](https://youtu.be/JapNYUTesIU)

Attendees:

- Daniel Holbach
- Jack Francis
- Jean-Philippe Evrard

Agenda/Notes:

- Introductions
- CNCF Move: what’s left to do:
  - Re-add tests for kured, we split charts and kured itself - so it’ll need a bit of reorg: <https://github.com/kubereboot/kured/issues/647>
  - Document where all the resources can be found.
  - Look into <https://github.com/cncf/project-template/blob/main/GOVERNANCE-maintainer.md> - adopt it over time.
    - Important – Please review
  - ACTION: Jack to review if we can make use of testgrid.k8s.io somehow
- Figure out if we move to a rhythm of meetings every two weeks, to be able to invite new contributors better.
- Kured 1.11.0 release: <https://github.com/kubereboot/kured/milestone/12>
- Sandbox announcement:
  - ACTION: Daniel to write Kured Sandbox Announcement

### 2022-09-14 16:00 UTC

This was an async meeting on Slack instead.

Attendees:

Agenda/Notes:

- Introductions
- Review of actions from last meeting:
  - CNCF Sandbox: [We have been approved!](https://lists.cncf.io/g/cncf-toc/message/7501) Let’s discuss next steps.
    - We bookmarked <https://github.com/kubereboot> as our new GitHub organisation. Are we good with that name? (kured is already taken.)
- 1.11.0 release to go with k8s 1.25.0

### 2022-08-03 (cancelled)

Cancelled due to lack of participation.

### 2022-07-06 16:00 UTC

[Link to Recording](https://youtu.be/rurjb9J5INU)

Attendees:

- Alexei Tighineanu
- Daniel Holbach
- Jack Francis
- Jean-Philippe Evrard

Agenda/Notes:

- Short Kured Demo (related to <https://github.com/kubereboot/kured/issues/359>)
  - We should get more input. This would change the way Kured works.
  - This would improve security.
  - Current UX: “agent that runs on node, does reboots on behalf of OS”.
  - Is this going to be a new project?
  - Standard project for node maintenance?
- CNCF Move
  - We added Kured to the queue of projects to be reviewed for Sandbox. Weaveworks agreed to donate it.
  - Initiative handled by Daniel. He is tracking the status of the progress.
  - Current queue: <http://sandbox.cncf.io>
  - Meeting for TOC sandbox review is July 26, attendance requested
    - <https://docs.google.com/document/d/1jpoKT12jf2jTf-2EJSAl4iTdA7Aoj_uiI19qIaECNFc/edit#heading=h.z6ru568ph1th>
    - <https://cloud-native.slack.com/archives/C0MP69YF4/p1655239654509739>

### 2021-12-01 16:00 UTC

Link to Recording lost.

Attendees:

- Daniel Holbach
- Jack Francis
- Jean-Philippe Evrard
- Mark Rosetti

Agenda/Notes:

- Introductions
- Review of actions from last meeting
- Users being rate-limited:
  - Jack to file an issue for us to link users to resources for local caching of images: <https://github.com/kubereboot/kured/issues/471>
  - Daniel to see if Kured could be part of DockerHub OSS Programme
- Window Support: <https://github.com/kubereboot/kured/issues/458>
  - PoC up in <https://github.com/kubereboot/kured/pull/460>
  - Technically this hasn’t been possible up until recently. K8s only has support for this since 1.22 (WindowsHostProcessContainers).
  - Will require bigger changes to how images are built. GH Actions should be fine.
  - Mark walked us through the PR.
  - Explained that prometheus-node-exporter got a similar integration in. They are using GH Actions for building the images.
  - Kubernetes needed to have the image build be possible on Linux too - made everything more complicated.
  - Mark: Once PR has progressed a bit further, we can reach out to SIG Windows people for testing and review.
  - Let’s get this PR in first, then do any refactoring.
- Release planning 1.8.2
  - Daniel to do some more testing in Weave Dev clusters.
  - One open PR for release - can Christian take a look?
  - Can somebody write the release notes?
  - Then go and release - seems we’re done!
- Release planning 1.9.0

### 2021-10-27 16:00 UTC

[Link to Recording](https://youtu.be/fkoDxkb9JmY)

Attendees:

- Christian Kotzbauer
- Daniel Holbach
- Jack Francis

Agenda/Notes:

- Introductions
- Review of actions from last meeting
- Quay.io: Daniel to talk to Weave IT folks to see if we have heard back from Quay/RH.
- Tighten permissions (security best practices) · Issue #451 · kubereboot/kured
  - Assigned to jackfrancis, will do some repro tests of varying security modifications

### 2021-09-27 16:00 UTC

[Link to Recording](https://youtu.be/k7Ipxe0FE0A)

Attendees:

- Art
- Christian Kotzbauer
- Daniel Holbach
- Jack Francis
- Jean-Philippe Evrard

Agenda/Notes:

- Introductions
- Review of actions from last meeting
- 1.8.0 release!
  - Review of <https://github.com/kubereboot/kured/pull/428>
  - Jack and Jean-Philippe will have some time to review the situation.
  - Theoretically this could be easy to solve.
  - There’s also 0.21.5 of the libraries, so maybe let’s update to these as well.
  - Daniel to do additional testing before release
  - Daniel to write release announcement
- Use of context.TODO() · Issue #234 · kubereboot/kured: probably unrelated.

### 2021-08-25 16:00 UTC

[Link to Recording](https://youtu.be/EVRD0g4yBTo)

Attendees:

- Christian Kotzbauer
- Daniel Holbach
- Jean-Philippe Evrard

Agenda/Notes:

- Introductions
- Review of actions from last meeting
- 1.8.0 release planning:
  - Reviewing open PRs
    - JP to review 419
    - JP: 418 can be merged - needs to be added to helm chart (423)
    - CK: 415 to be merged after 1.8.0
  - All open issues can be found here: <https://github.com/kubereboot/kured/milestone/7>
  - Daniel to write a pull request template (explain to add new arguments to manifest, helm chart, docs, etc)

### 2021-07-28 (cancelled)

Cancelled due to lack of participation.

### 2021-05-26 16:00 UTC

[Link to Recording](https://youtu.be/oXBoCIRxy0s)

Attendees:

- Alexei Tighineanu
- Daniel Holbach
- Jack Francis
- Jean-Philippe Evrard
- Jonathan McCracken

Agenda/Notes:

- Introductions
- Review of actions from last meeting
- Daniel: blog post ([link to draft](https://docs.google.com/document/d/1GuuNv6Iq_X7Bp4ooeshlu3rPUtJduNMmFpZDHexoKfQ/edit#))
  - Now that the release (1.7.0) is out, we want to talk about it and hopefully get more people involved.
  - Jack has colleagues who write on CNCF or k8s blog - we can ask about process and help.
  - Daniel maybe has some time on Friday.
- Alexei: interested in breaking up some of the bigger functions.
  - Alexei to PM this work, Jack happy to contribute.
  - Drain/reboot functions: notifications can be moved out of these.
  - <https://github.com/kubereboot/kured/pull/368> can be reviewed.
- Jack: What are the big things we want to land in the next release cycle?
  - Maybe make kured less privileged?
  - Maybe more of the [flexible-reboot-command](https://github.com/kubereboot/kured/issues?q=label%3Aflexible-reboot-command) story?
    - Maybe improve documentation?
  - Side-point: some old feature requests might have been closed through the “stale” GH Action.
    - Do we need to disable this?
  - Architecture support: <https://github.com/kubereboot/kured/issues/23>?
    - Maybe we can learn from what Flux is doing?
- Jonathan: support for Amazon Linux?
  - JP says “reboot-command” option.

### 2021-04-28 16:00 UTC

[Link to Recording](https://youtu.be/o22fIlFebyo)

Attendees:

- Alexei Tighineanu
- Daniel Holbach
- Jack Francis
- Jean-Philippe Evrard

Agenda/Notes:

- Introductions: who are you, what would you like to see in kured?
- Review of action items from last meeting.
- Release 1.7.0 - still to be done
  - Prometheus updates: <https://github.com/kubereboot/kured/pull/367> - Daniel happy to test in WW Dev.
  - Tests update: <https://github.com/kubereboot/kured/pull/348> - Jack wants to review.
  - 1.21 testing in CI: <https://github.com/kubereboot/kured/pull/349>
    - Blocked on <https://github.com/kubernetes-sigs/kind/issues/2188>
- Alexei wants to put some work into making kured code more unit-testable.
- Alexei wants to remove the current slack package.
- Daniel to finish kured blog post once we’re more confident in 1.7.0 release.
- JP has ideas on how kured could be re-architected. Making it more configurable through CRDs, etc. A bit concerned about how much time it’d take to implement though. Also: We like kured the way it is now, so we don’t want a re-architecture to be intrusive for the community: We are thinking of alternative projects or branches. See also: <https://github.com/kubereboot/kured/issues/359>
- Food for thought: "latest kured" on all the k8s releases.

### 2021-03-24 16:00 UTC

[Link to Recording](https://youtu.be/Yhz3XDzkOn8)

Attendees :

- Christian Kotzbauer
- Daniel Holbach
- Jean-Philippe Evrard

Agenda/Notes:

- Introductions: who are you, what would you like to see in kured?
- New cores:
  - JP Evrard, Christian Kotzbauer, Hidde Beydals
- Increase test coverage: Prometheus/notifications
  - Integration tests for this would be great. Actually test on k8s.
  - Showing metrics right, will reboots be blocked, etc.
  - Proposal bot updates prometheus deps, but we can’t update easily.
  - <https://github.com/kubereboot/kured/issues/243>
  - If you are interested in fixing this, please pair with JP!
  - Another idea: mock tests: Record messages sent to prometheus and compare expected vs. observed.
  - Please note down the steps to test manually, so Daniel can test in WW Dev cluster.
- Blog post about kured story
  - Then get it on weave/kubernetes blogs
  - Daniel to set up Google draft: ✅ <https://docs.google.com/document/d/1GuuNv6Iq_X7Bp4ooeshlu3rPUtJduNMmFpZDHexoKfQ/edit?usp=sharing>
  - Timeline TBD
  - [Release of Kubernetes 1.21 is April 8th](https://www.kubernetes.dev/resources/release/)
  - Aim for kured release 15th April? MAybe align blog post with 1.7.0 release.
- Review of next release progress: <https://github.com/kubereboot/kured/milestone/6>
  - 297: flexible reboot command
    - Merged
  - JP to contact other flexible-reboot-command PR authors to check/review 297.
  - Prometheus deps update
  - Alexei’s notification work.
  - Jack’s daemonset get operations.
    - To be discussed outside the meeting, in our channel, if it makes the cut  of 1.7.0.
- Commit messages
  - Someone should demonstrate the impact of it, e.g. GH Action which writes release notes based on commit msg prefix?
    - Jack?
  - Let’s not be in people's way and make the barrier of entry the lowest possible, but if there is a good value, let’s think abou tit.
    - <https://github.com/weaveworks/ui-components/commits/master> e.g. uses conventionalcommits javascript logic.

### 2021-01-27 (cancelled)

Cancelled due to lack of participation.

### 2020-12-23 (cancelled)

Cancelled due to lack of participation.

### 2020-11-25 16:00 UTC

[Link to Recording](https://youtu.be/u8WdDZ7eOeY)

Attendees:

- Alexei Tighineanu
- Christian Kotzbauer
- Daniel Holbach
- Jean-Philippe Evrard

Agenda/Notes:

- Introductions: who are you, what would you like to see in kured?
- Review of actions from last meeting
  - <https://github.com/kubereboot/kured/pull/178> still needs to be reviewed, also needs rebasing.
  - Daniel to file meta issue about reboot approaches
- Christian found that <https://github.com/kubereboot/kured/pull/230> will need a follow-up.
  - ACTION: Daniel to file an issue for this.
- Review of testing PRs: <https://github.com/kubereboot/kured/pulls?q=is%3Apr+is%3Aopen+label%3Atesting>
  - Generally looking good. Reviewed as a group, only little bits of feedback for now. 181, 183, 184 can be merged very soon.
- More 1.6.0 planning:
  - K8s 1.20 release in 2 weeks.
  - Merge k8s/go updates after testing has landed.
  - What about prom (and other dep) updates?
- Common notification solution
  - 212 is closed to being merged.
  - 228 needs a little more work from Alexei - pointer to how to construct a shoutrrr url, what is supported and support the soon to be “old” slack args for some time.

### 2020-09-23 16:00 UTC

[Link to Recording](https://youtu.be/CaUbpjMvGL0)

Attendees:

- Jean-Philippe Evrard
- Daniel Holbach

Agenda/Notes:

- Introductions: who are you, what would you like to see in kured?
- [evrardjp] Discussion about generic reboots vs customizable reboots:
  - Do we want to reduce attack surface by using syscall reboots
    - Pros: Independent of the base OS
    - Cons: We are reimplementing systemd/OS reboots, with all the race conditions and data corruptions (sync errors)
  - Do we want to introduce customizable command for reboot:
    - Pros: Allows users to run on different OSes, not only ubuntu/SUSE :)
    - Cons: Does not reduce privileged pods attack surface
  - Do we want to establish a "mixed" model:
    - Have a flag with `--reboot-method=syscall/command` ?
    - Have a flag like `--host-reboot-command` (and we figure out how to find the host namespace)?
  - ACTION: Daniel to find somebody to review #178.
    - This would be a good stepping stone.
  - ACTION: Daniel to file a meta-issue to track this work and collect input on the approaches listed above.
- [evrardjp] Should we provide different branches of kured to update the guest alpine OS?
  - Pros: We have a simple story for providing hotfixes to certain branches/old kubernetes versions
  - Pros: We can have updated alpine images, which are more secure
  - Cons: This means we’ll have to maintain a ton of images, and the versions can be quite complicated.
  - Cons: It sends a message that we are ensuring the long term security of possibly old kured containers, which for the moment is not the case.
  - Conclusion (for now): need to understand how many k8s versions are currently supported. Also need basic release automation and basic smoke testing. Maybe something to be worked on during Hacktober, etc?
  - Possible discussion: should kured be more closely aligned with k8s and its releases.
- [evrardjp] Test coverage extending -- An update
  - ACTION: Daniel to review #183, #184, #185 - also get somebody from WW to review.
- [evrardjp] change to kubectl go module to drain (#124)
  - JP has worked on a proof of concept, might be able to mentor somebody to complete it.
  - ACTION: Daniel+JP to file bitesized issues and label them hacktoberfest to help with #124.
- [dholbach] Hacktoberfest participation
  - ACTION: Revisit Azure docs - they might need an update.
  - ACTION: Daniel to reach out to Christian, David and others and do some issue brainstorming.
- Review of actions from last meeting
  - ✅ [evrardjp]: ACTION: go through issue list again and mark issues as low-hanging-fruit

### 2020-08-26 16:00 UTC (cancelled)

Cancelled due to lack of participation.

### 2020-07-22 16:00 UTC

[Link to Recording](https://youtu.be/c6Jg_DLzoaY)

Attendees:

- Daniel Holbach

Agenda/Notes:

- Introductions: who are you, what would you like to see in kured?
- Review of actions from last meeting
  - [evrardjp]: ACTION: go through issue list again and mark issues as low-hanging-fruit
- [dholbach] Quick update:
  - Helm charts move is done. Helm users can now enjoy kured from the /w/kured repository. Thanks go to Christian and David who got most of this done - great work!
  - K8s 1.19 will land soon, we’ll get kured 1.5 out to support this. This PR will need to be landed for this.

### 2020-06-24 16:00 UTC

[Link to Recording](https://youtu.be/eIupOBAC32I)

Attendees:

- Christian Kotzbauer
- Daniel Holbach

Agenda/Notes:

- Introductions: who are you, what would you like to see in kured?
- Review of actions from last meeting
  - ACTION: Daniel to comment on JP’s kind testing PR
  - [evrardjp]: ACTION: go through issue list again and mark issues as low-hanging-fruit
- Progress on <https://github.com/kubereboot/kured/issues/140>
  - Christian is looking for feedback on the chart.
  - ACTION: Daniel to talk to Weaveworks Ops people to add deploy key.
  - Next steps (after merging) would be:
    - Create kured release.
      - Question: should we release 1.4.1 which would be just the added chart or go for 1.5.0 immediately (supporting k8s 1.1[7-9])? Or create a 1.4 branch and cherry-pick just the chart changes…?
      - We can’t wait until k8s 1.19 release.
      - Test chart.
- Review and understand <https://github.com/kubernetes/enhancements/pull/1411>
  - Christian read the KEP and it looks good for services like kured.
  - If/When the KEP gets implemented, kured will need to be adapted to talk to the API and figure out if the node is in maintenance mode, etc.
  - We might want to report back that we read it and that kured is looking forward to this.
  - ACTION: Daniel to let people know on Slack about the KEP again and invite comments.

### 2020-05-27 16:00 UTC

[Link to Recording](https://youtu.be/j332xy0J1KQ)

Attendees:

- Christian Kotzbauer
- Daniel Holbach
- Jean-Philippe Evrard
- Michał Schott

Agenda/Notes:

- Introductions: who are you, what would you like to see in kured?
  - Christian: software dev from Bavaria, uses kured in his own k8s projects.
  - Michał: from Gdansk, works for a company in Belfast (didn’t catch the name), has a fork and a PR, wants to avoid having to carry the fork forever.
- Review of actions from last meeting
- [ckotzbauer] [Moving Helm Chart into kured repository](https://github.com/kubereboot/kured/issues/140)
  - ACTION: Daniel and Christian to meet up (potentially next week) to review the Helm chart, especially options, etc to see if we want to maintain this from now on.
  - Christian agreed to be point of contacts for the chart for now.
  - Daniel can reach out to people in Weaveworks - we have some prior knowledge in publishing charts, etc.
  - Generally agreed that this might be a good step for the project: bundle efforts, potentially attract new contributors.
  - Christian has experience with using GH Actions for linting and publishing Helm charts.
  - Some discussion around Helm 3 and implications.
  - ACTION: Daniel to reach out to Flux team to figure out how they do Helm chart releases.
- [evrardjp] Automated testing using KinD
  - Following up from last meeting: we have bash script that does a complete run: <https://github.com/kubereboot/kured/pull/141>
  - Daniel took a look at what Flux uses: GH Actions, KinD and bats.
    - this is what e.g. a bats test can look like: <https://github.com/fluxcd/flux/blob/master/test/e2e/11_fluxctl_install.bats>
    - feedback from the Flux team was: in CircleCI e2e tests would flake a lot - that's gone with moving to GH Actions
  - ACTION: evrardjp to refresh the PR and try to cleanup with the gh actions/kind + bats
- [michał]: Outstanding PRs
  - Core feature has landed, another PR is still outstanding.
  - <https://github.com/kubereboot/kured/pull/144>
  - ACTION: Daniel to reach out to Bryan (or others) to make sure we get this landed.
- Community participation
  - [evrardjp]: ACTION: go through issue list again and mark issues as low-hanging-fruit
  - ACTION: Daniel to reach out more broadly for the next meeting.

### 2020-04-22 16:00 UTC

[Link to Recording](https://youtu.be/pa6BDr2HzfM)

Attendees:

- Daniel Holbach
- Jean-Philippe Evrard

Agenda/Notes:

- Introductions: who are you, what would you like to see in kured?
- Review of actions from last meeting
  - ACTION: Daniel to set up milestone for next release, including 1.18 support.
    - <https://github.com/kubereboot/kured/milestone/2>
  - ACTION: Daniel to set up monthly meetings for now.
    - Done. Unfortunately had to recreate the meeting.
  - ACTION: Daniel to reach out to Helm chart authors and invite them to the next meeting.
    - [stable/kured](https://github.com/helm/charts/tree/master/stable/kured) has no OWNERS file, looking at its [commit history](https://github.com/helm/charts/commits/master/stable/kured), we have

        [daniel@reef kured ]$ git shortlog . -sn
        2  Andrew Plummer
        2  Matthieu Paret
        2  Mike Unke
        1  Aditya Sundaramurthy
        1  Christian Kotzbauer
        1  David J. M. Karlsen
        1  Doug Winter
        1  Flavian
        1  Maxime VISONNEAU
        1  Patrick M. Slattery
        1  Roman P
        1  Tammo van Lessen
        1  Will Hughes
        [daniel@reef kured ]$

      Not quite sure who to ping.

    - ACTION: Daniel to take a look at this again. Invite ALL committers to channel and meetings.
      - ✅ but wasn’t able to find emails for @chrpme, @patrickmslatteryvt, @lumi017, @insertjokehere.

- Daniel: Review of [1.4.0 milestone](https://github.com/kubereboot/kured/milestone/2). Let’s get the release out.
  - ACTION: Daniel to move client-go and kubectl back to 1.17.
  - Test over the weekend. Get release out on Monday(?).
- ACTION: JP to check if kind is an option for testing kured.
- Some discussion of <https://github.com/kubereboot/kured/issues/124> - would be nice to get some feedback from the rest of the team about it. Certainly would reduce image size and compatibility matrix size.

### 2020-03-25 16:00 UTC

[Link to Recording](https://youtu.be/Xc-tkNb6zNk)

Attendees:

- Ace Edlib
- Adam Harrison
- Craig Peters
- Daniel Holbach
- Jean-Philippe Evrard
- Rita Zhang

Agenda/Notes:

- Introductions: who are you, what would you like to see in kured?
  - Adam Harrisson, author of kured. Weaveworks used k8s before there was GKE, etc. Adam was the need to be more proactive about rebooting machines. Feature complete from WW side. Hasn’t been too active in terms of PR reviews.
  - Jean-Phillipe, SUSE. Joined k8s team there. SUSE ships kured. Wants to contribute to keep it healthy. Wants project to get down to 0 issues/PRs. Want to upstream some patches (a patch about notifications). Wants to learn more about the project in the next time.
  - Craig, Azure team. Works with Rita and Ace. Interested in standardising kernel patches and restarts across multiple projects. Some of their users run …, some managed services like AKS. kured would be reasonable approach to that.
  - Ace, used kured in production. Wants to see if carried forward.
  - Rita, echoes what Craig and Ace said.
  - Daniel works for Weaveworks for the community and wants to help move things forward community wise.
- Adam: some history, Weaveworks requirements of kured.
- What do we still want to get merged for the next release?
  - JP: Nothing urgent on the SUSE side. Make sure it works with most recent k8s releases.
  - Question: regular builds and tests? Adam says: it’d be great if we could do something here. In the past Adam updated when he worked on kured. Some process and notes available in <https://github.com/kubereboot/kured/blob/master/DEVELOPMENT.md>
  - Is automated e2e tests something we want?
  - Integration test for locking code would be great to see. Test against etcd and api server.
  - Ace could maybe help with some of the test automation.
  - Some documentation of best practices would be nice.
  - Some discussion about AKS addons(?).
  - Non-x86 builds? IoT people might be interested. Craig will reach out to that community and point to this meeting.
  - Alerts might be a topic of investigation.
  - Cadence should ideally be: when there’s a k8s release, do a kured release.
  - Drain code was split out of for eksctl, instead of bundling kubectl - would make releases smaller and easier.
    - It would be good if we could reuse the drain from the module instead of bundling the whole kubectl for drain.
    - Check issues, see if there’s one.
- ACTION: Daniel to set up milestone for next release, including 1.18 support.
  - <https://github.com/kubereboot/kured/milestone/2>
- Questions
- Next meeting time
  - ACTION: Daniel to set up monthly meetings for now.
  - ACTION: Daniel to reach out to Helm chart authors and invite them to the next meeting.
- ~~Reminder: we also hang out in #kured on Weave Slack.~~
