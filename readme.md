# Hierarchic Helm

---

# Description

This repository contains an example helm pattern that can be used to deploy
third party applications to multiple clusters using a common set of values while 
allowing for cluster-specific overrides. When used with a system like ArgoCD
an administrator can push a change to the base values and have it automatically
propagated to all clusters. This avoids unnecessary regeneration of deployment
definitions and allows for a more centralized management of applications which
can be used with a wide variety of CD tools.

---

# Features

- Centralized chart management and source of truth for tenants or autonomous teams
- Cluster level customization
- Recursive dependency deployment for applications that depend on resources from another
- Agnostic helm integration; HAH only uses standard helm features, so it can be used with any helm compatible tools

---

# Requirements

- Helm....
- Kubernetes (optional)
  - Not sure what you'd do with it without a cluster, but it ***could*** be used without it

# FAQ

#### Do I need to prefix all of the charts with "hierarchic"?

No, this is just to help make it clear in the example deployment that these are
the application specific variants of the charts and not the actual third party charts.
However, it is recommended that a prefix be defined for the charts to have a similar
clarity across a given org. 