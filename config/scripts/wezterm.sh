#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

THORIUM_VER=$(curl -sL https://api.github.com/repos/wez/wezterm/releases/latest | jq -r '.assets[] | select(.name? | match(".*fedora39.x86_64.rpm$")) | .browser_download_url')
curl -sL -o /tmp/thorium.rpm ${WEZTERM_VER}
rpm-ostree install /tmp/wezterm.rpm

