#!/usr/bin/bash

set -ouex pipefail

sed -i '/^PRETTY_NAME/s/Kinoite/caos/' /usr/lib/os-release

