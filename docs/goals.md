## Mission Statement

Project-X-Linux is a lightweight Ubuntu-based Linux distribution focused on providing a minimal, fast, and reliable desktop environment for old laptops and virtual machines, suitable for daily use and system rescue tasks, while remaining fully open-source and easily maintainable.


## Target Hardware

CPU: x86_64 (64-bit), older Intel/AMD CPUs supported by Ubuntu LTS

RAM: 2–4 GB minimum recommended

Storage: ~4 GB minimum for installed system

Other: Should run in Virtual Machines (VirtualBox, VMware, QEMU)

Boot modes: BIOS + UEFI


## Use Cases

Daily lightweight desktop

Openbox as WM

Basic productivity: terminal, file manager, network, lightweight apps

Rescue / recovery system

Optional disk and system tools at install time

Networking for updates or remote access

Ability to chroot or repair broken systems


## Hard Constraints

Idle RAM usage: ≤ 200–300 MB with Openbox

Installed size: ≤ 4 GB for minimal system

Boot time: fast enough for old laptops

Services: only essential services by default (networking included)

Package management: apt only, minimal dependencies

Security: track Ubuntu LTS updates

Maintainability: fully open source, user can continue updates if project abandoned
