#!/bin/bash
set -e
cd linux
make defconfig
make -j$(nproc)
