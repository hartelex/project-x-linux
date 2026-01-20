# RAM Optimization and Idle Memory Metrics

## Baseline Environment

* Base system: Ubuntu 22.04 LTS Server (minimal install)
* Architecture: amd64
* Kernel: generic (5.15.x)
* Init system: systemd
* Desktop stack:

  * Xorg
  * Openbox (window manager)
  * tint2 (panel)
  * pcmanfm (file manager)
* Session start method: `startx`

## Measurement Methodology

Measurements were taken:

* After a clean reboot
* Immediately after login
* With no user applications opened
* One terminal emulator opened only for measurement

Primary command used:

```
free -h
```

Secondary inspection:

```
ps aux --sort=-rss | head -n 15
```

## Idle RAM Results

| State                | RAM Used |
| -------------------- | -------- |
| At login             | 279 MiB  |
| After system settles | 280 MiB  |

This is considered **excellent** for an Ubuntu-based desktop system.

## Major Memory Consumers (Expected)

* Xorg
* openbox
* tint2
* policykit-1-gnome
* systemd-journald

These components are required for a functional graphical desktop and rescue-capable system.

## Optimizations Applied

### Removed

* snapd (purged completely)

Reason:

* High background memory usage
* Not required for target system goals

### Disabled Services

The following services were disabled to reduce idle memory usage:

* `multipathd`

  * Enterprise SAN feature
  * Not applicable to laptops or VMs

* `systemd-timesyncd`

* `apport`

* `unattended-upgrades`

### Journald Limits

Memory usage for system logs was capped:

```
SystemMaxUse=20M
RuntimeMaxUse=10M
```

### Optional Policy Decisions

* `udisks2` may be disabled for rescue-focused builds

  * Tradeoff: no automatic removable media mounting
  * Benefit: reduced background memory usage

## Resulting Policy

* Target idle RAM (Ubuntu-based): **<300 MiB**
* Achieved idle RAM: **~280 MiB**
* No loss of core desktop or rescue functionality

## Notes

* Further reductions below ~250 MiB are unrealistic on Ubuntu without removing core functionality
* This baseline is suitable for:

  * Old laptops
  * Virtual machines
  * Daily use
  * Rescue environments

This document defines the official idle memory baseline for Project-X-Linux Phase 1.
