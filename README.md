# Linux Kernel Dev on Mac (Apple Silicon)

This is a self-contained Docker-based environment to build and run the x86_64 Linux kernel on macOS (M1/M2).

## Usage

### 1. Build the Docker image

```bash
docker build -t kernel-dev -f Dockerfile .
```

### 2. Start the container

```bash
docker build --platform linux/amd64 -t kernel-dev:latest .
docker run --platform linux/amd64 -it --privileged -v $(pwd):/workspace kernel-dev
```

### 3. Inside the container

```bash
./bootstrap.sh
./build-kernel.sh
./run-qemu.sh
```

Enjoy your kernel boot log in QEMU!
