# Project-X-Linux

Project-X-Linux is a lightweight, Ubuntu-based Linux distribution designed for old laptops and virtual machines. It focuses on simplicity, low resource usage, and reliability while remaining suitable for daily use and basic system rescue tasks.

## Key Features

* Ubuntu LTS base
* Openbox window manager (no full desktop environment)
* Extremely low idle RAM usage
* Fast boot and minimal background services
* Live ISO with install option
* Optional rescue tools during installation
* Fully open source

## Target Hardware

* x86_64 systems
* Old laptops and virtual machines
* Recommended: 2–4 GB RAM

## Default Stack

* Base: Ubuntu LTS (minimal)
* Init system: systemd
* Desktop: Openbox
* Terminal: xfce4-terminal
* File manager: pcmanfm
* Networking: NetworkManager
* Bootloader: GRUB (BIOS + UEFI)

## Philosophy

Only essential components are included by default. Anything not required to boot, connect to the network, or provide a functional desktop is optional.

## License

GPL-3.0-or-later
