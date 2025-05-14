FROM ubuntu:22.04

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y \
    build-essential git curl vim \
    libncurses-dev flex bison libssl-dev \
    libelf-dev bc cpio rsync qemu-system-x86 \
    git-email wget xz-utils && \
    useradd -ms /bin/bash dev && \
    echo "cd /workspace" >> /home/dev/.bashrc

# 切換到 root 用戶來執行 git clone 和安裝 checkpatch
USER root
WORKDIR /workspace
RUN git clone --depth=1 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git && \
    cd linux && \
    cp scripts/checkpatch.pl /usr/local/bin/checkpatch && \
    chmod +x /usr/local/bin/checkpatch

# 切換回 dev 用戶
USER dev
WORKDIR /workspace
