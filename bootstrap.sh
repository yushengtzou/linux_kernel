#!/bin/bash
set -e

echo "[*] Cloning Linux kernel source..."
git clone --depth=1 https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git

echo "[*] Kernel source ready in ./linux"
