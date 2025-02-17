#!/bin/sh

# What does this do?
# Step 1: Create a directory to store the kernel
# Step 2: Download the kernel
# Step 3: Use defconfig-checker
# Step 4: Compile
# Step 5: Profit

mkdir "kali-nethunter-kernel"
cd "kali-nethunter-kernel" || echo "Failed to change directory to kali-nethunter-kernel. Stopping" && exit 1

repo init -u https://android.googlesource.com/kernel/manifest -b android-gs-raviole-5.10-android14-qpr3
repo sync -c --no-tags

git clone "https://github.com/fillwithjoy1/Kali-defconfig-checker"
./Kali-defconfig-checker/check-kernel-config ./private/gs-google/arch/arm64/configs/gki_defconfig -w

BUILD_CONFIG=private/gs-google/build.config.slider build/build.sh
