# LeanLTS Package Policy

## 1. Core System (always installed)

* **Base system**

  * `ubuntu-minimal`
  * `linux-image-generic`
  * `systemd`, `udev`
  * `apt`, `dpkg`
* **Networking**

  * `network-manager`
  * `curl`, `wget`, `ping`
* **Filesystem / Utilities**

  * `coreutils`, `bash`, `grep`, `sed`, `tar`, `gzip`
  * `sudo`, `vim` or `nano`
* **Desktop Core**

  * `xorg`
  * `openbox`
  * `xfce4-terminal`
  * `pcmanfm`
  * `tint2` (optional panel)
* **Bootloader**

  * `grub` (BIOS + UEFI)

> Goal: Minimal system that boots, connects to network, and has a working lightweight desktop.

---

## 2. Optional System (installed by default but removable)

* `thunar` (alternate file manager)
* `lightdm` (optional display manager)
* `lxappearance` (GTK theme manager)
* `alacritty` or `xterm` (alternate terminals)

> Convenience packages, not strictly required.

---

## 3. Rescue / Recovery Tools (user-selectable during installation)

* **Disk & Partition Tools:** `gparted`, `parted`
* **Recovery & Backup:** `testdisk`, `rsync`
* **Chroot / Repair Tools:** `debootstrap`, `grub-install`
* **Network Troubleshooting:** `net-tools`, `nmap`, `iperf`

> Installed only if user chooses “Rescue Tools” during install.

---

## Rules / Guidelines

1. No Snap / Flatpak by default — keep system minimal.
2. No auto-start services except networking.
3. GUI apps must justify memory usage — optional apps are lightweight.
4. All packages come from Ubuntu LTS repos.
5. Package lists are version-controlled in repo: `packages/base.list`, `packages/opt
