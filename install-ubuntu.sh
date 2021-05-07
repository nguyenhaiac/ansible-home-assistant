#!/usr/bin/env bash
set -euo pipefail

ROOTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Host file location
HOSTS="$ROOTDIR/hosts"
# Main playbook
PLAYBOOK="$ROOTDIR/home-assistant.yml"

echo $ROOTDIR

ansible-playbook -i "$HOSTS" "$PLAYBOOK" --ask-become-pass

exit 0
