#!/bin/bash

# This test file will be executed against an auto-generated devcontainer.json
# that includes the 'nvtop' feature with no options.
#
# Eg:
# {
#    "image": "<..some-base-image...>",
#    "features": {
#      "nvtop": {}
#    }
# }
#
# This test can be run with the following command (from the root of this repo)
#    devcontainer features test \ 
#               --features nvtop \
#               --base-image mcr.microsoft.com/devcontainers/base:ubuntu .

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

check "version" nvtop  --version

# Report result
reportResults
