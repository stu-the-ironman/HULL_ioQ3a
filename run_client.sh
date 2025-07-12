#!/bin/bash

./build/release-linux-x86_64/ioquake3.x86_64 \
+set fs_homepath /tmp/ioq3-clean
+set fs_basepath "$PWD" \
+set fs_game baseq3 \
+set developer 1 \
+set fs_debug 1
