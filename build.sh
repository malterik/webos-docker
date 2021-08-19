#!/bin/bash
cd /build
git clone https://github.com/webosose/build-webos.git
cd build-webos
sudo scripts/prerequisites.sh
./mcf raspberrypi4
make webos-image
