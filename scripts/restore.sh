#!/bin/bash
set -e
export RESTIC_REPOSITORY="/mnt/usb-backup/restic-repo"
export RESTIC_PASSWORD="JouwWachtwoordHierZelfdeAlsInVault"

read -p "Let op: Dit overschrijft /opt/appdata. Zeker weten? (y/N) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    mkdir -p /opt/appdata
    restic restore latest --target /
    echo "Restore voltooid! Herstart je server."
fi