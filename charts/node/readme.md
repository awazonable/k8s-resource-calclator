### Helm Chart README

## Overview

This Helm chart deploys and manages Kubernetes nodes with specific configurations, including resource allocations and custom labels. It supports operations like upgrading and rolling back nodes while maintaining consistent configurations.

## Values

### General Configuration

- `replicas`: Number of node replicas to create.
- `labels`: (Optional) Additional labels to apply to nodes.
- `allocatable`: Resources that are allocatable to pods.
  - `cpu`: CPU resources allocatable to pods.
  - `memory`: Memory resources allocatable to pods.
- `capacity`: Total capacity of the node resources.
  - `cpu`: Total CPU resources.
  - `memory`: Total memory resources.
- `reload`: Boolean value indicating whether to reload node configurations.

### Example Values

```yaml
replicas: 20
# labels:
#   app: app-name
allocatable:
  cpu: "8"
  memory: "72Gi"
capacity:
  cpu: "12"
  memory: "96Gi"
reload: true
```

## Installation

To install the chart with the release name `my-release`:

```sh
helm install my-release ./path-to-chart
```

## Upgrading the Chart

To upgrade the chart:

```sh
helm upgrade my-release ./path-to-chart
```

## Uninstalling the Chart

To uninstall the chart:

```sh
helm uninstall my-release
```

## Summary

This Helm chart allows for the flexible deployment and management of Kubernetes nodes, including support for node lifecycle operations like upgrades and rollbacks. Configuration options are easily adjustable via the `values.yaml` file.