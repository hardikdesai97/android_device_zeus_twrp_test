#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

if [ ! -d .repo/local_manifests ];
then
    mkdir -p .repo/local_manifests
fi

if [ ! -f .repo/local_manifests/local_unicorn.xml ];
then
    cp device/xiaomi/unicorn/local_unicorn.xml .repo/local_manifests/local_unicorn.xml
fi

if [ ! -d external/gflags ];
then
    repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all) external/gflags
fi


	export TW_DEFAULT_LANGUAGE="zh_CN"
	export LC_ALL="C"
	export ALLOW_MISSING_DEPENDENCIES=true
