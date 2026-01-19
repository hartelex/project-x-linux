#!/bin/bash

# Early Phase 1 repo bootstrap

# Folders
mkdir -p docs
mkdir -p reference-system
mkdir -p openbox
mkdir -p scripts
mkdir -p iso

# Docs placeholders
touch docs/goals.md
touch docs/package-policy.md
touch docs/roadmap.md

# Reference system placeholders
touch reference-system/installed-packages.txt
touch reference-system/removed-packages.txt
touch reference-system/notes.md

# Openbox placeholders
touch openbox/rc.xml
touch openbox/autostart
touch openbox/menu.xml

# Scripts placeholders
touch scripts/cleanup.sh
touch scripts/disable-services.sh
touch scripts/post-install.sh

# ISO folder placeholder
touch iso/README.md

echo "Phase 1 repo structure created successfully!"
