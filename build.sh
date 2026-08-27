#!/usr/bin/env bash

set -euo pipefail

echo "=== Creating build directory ==="
mkdir -p dist/hello-app/bin

echo "=== Compiling application ==="
gcc hello.c dist/hello-app/bin/hello-app

echo "=== Inspecting binary ==="
file dist/hello-app/bin/hello-app
ldd dist/hello-app/bin/hello-app

echo "=== Packaging application ==="
tar -czf hello-app-linux.tar.gz -C dist hello-app

echo "=== Build complete ==="
ls -lh hello-app-linux.tar.gz
