#!/usr/bin/bash

set -oue pipefail

rpm-ostree cliwrap install-to-root /
rpm-ostree override remove kernel kernel-core kernel-modules kernel-modules-core kernel-modules-extra --install kernel-cachyos-lto