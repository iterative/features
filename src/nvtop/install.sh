#!/bin/sh
set -ue

echo "Activating feature 'nvtop'"

export DEBIAN_FRONTEND=noninteractive

apt-get update --yes
apt-get install --yes libdrm-dev libsystemd-dev
apt-get install --yes cmake libncurses5-dev libncursesw5-dev git
git clone https://github.com/Syllo/nvtop.git
mkdir -p nvtop/build && cd nvtop/build
cmake .. -DNVIDIA_SUPPORT=ON -DAMDGPU_SUPPORT=ON -DINTEL_SUPPORT=ON
make
make install
