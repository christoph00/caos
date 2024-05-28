#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

LATEST_URL=$(curl -sL https://api.github.com/repos/cloud-hypervisor/cloud-hypervisor/releases/latest | jq -r '.assets[] | select(.name? | match(".*cloud-hypervisor$")) | .browser_download_url')
curl -sL -o /usr/bin/cloud-hypervisor ${LATEST_URL}
chmod +x /usr/bin/cloud-hypervisor


# CH Remote
LATEST_REMOTE_URL=$(curl -sL https://api.github.com/repos/cloud-hypervisor/cloud-hypervisor/releases/latest | jq -r '.assets[] | select(.name? | match(".*ch-remote$")) | .browser_download_url')
curl -sL -o /usr/bin/ch-remote ${LATEST_REMOTE_URL}
chmod +x /usr/bin/ch-remote