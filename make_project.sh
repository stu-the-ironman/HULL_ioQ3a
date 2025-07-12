#!/bin/bash

echo "Cleaning project..."
make clean

echo "Building project with $(nproc) threads..."
make -j"$(nproc)"
build_status=$?

if [ $build_status -eq 0 ]; then
    echo -e "\n✅ Build completed successfully!"
    # Optional: auto-run the game client
    # echo "Launching client..."
    # ./build/release-linux-x86_64/ioquake3.x86_64 +connect 127.0.0.1
else
    echo -e "\n❌ Build failed with status $build_status."
fi
