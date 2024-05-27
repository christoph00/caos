#!/usr/bin/bash

set -ouex pipefail

# Branding for Bluefin/Aurora
if test "$BASE_IMAGE_NAME" = "silverblue"; then
    sed -i '/^PRETTY_NAME/s/Silverblue/caos/' /usr/lib/os-release
elif test "$BASE_IMAGE_NAME" = "kinoite"; then
    sed -i '/^PRETTY_NAME/s/Kinoite/caos/' /usr/lib/os-release
fi
