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

## Past meetings

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
