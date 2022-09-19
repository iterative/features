#!/bin/bash

# This test file will be executed against an auto-generated devcontainer.json
# that includes the 'dvc' feature with no options.
#
# Eg:
# {
#    "image": "<..some-base-image...>",
#    "features": {
#      "dvc": {}
#    }
# }
#
# This test can be run with the following command (from the root of this repo)
#    devcontainer features test \ 
#               --features dvc \
#               --base-image mcr.microsoft.com/devcontainers/base:ubuntu .

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

LATEST_VERSION=$(wget -O - dvc.org/deb/dists/stable/main/binary-amd64/Packages |
    grep "Version:" | cut -d " " -f 2 | tail -1)
INSTALLED_VERSION=$(dvc version | grep "DVC version" | cut -d " " -f 3)

check "version" test "$LATEST_VERSION"x = "$INSTALLED_VERSION"x

# Report result
# If any of the checks above exited with a non-zero exit code, the test will
# fail.
reportResults
