#!/usr/bin/env bash
# Checks to make sure the user is set for the root before going forward with the build.
# Syntax: ./pre-check.sh

set -e
if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi
