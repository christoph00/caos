#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

THORIUM_VER=$(curl -sL https://api.github.com/repos/Alex313031/thorium/releases/latest | jq -r '.assets[] | select(.name? | match(".*_AVX2.rpm$")) | .browser_download_url')
curl -sL -o /tmp/thorium.rpm ${THORIUM_VER}
rpm-ostree install /tmp/thorium.rpm
ln -sf /usr/lib/opt/chromium.org/thorium/thorium-browser /usr/bin/thorium-browser

ls -lah /usr/lib/opt


ls -lah /opt


which thorium-browser

sed -i 's@/opt/chromium.org/thorium/thorium_shell@/usr/lib/opt/chromium.org/thorium/thorium_shell@g' /usr/bin/thorium-shell