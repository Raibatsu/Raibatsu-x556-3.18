#!/bin/bash

#Mysteryagr
#Compile kernel with a build script to make things simple

mkdir -p out

export USE_CCACHE=1

export ARCH=arm64 ARCH_MTK_PLATFORM=mt6735
export SUBARCH=arm64

#Defconfig for Hot 4
make -C $PWD O=$PWD/out ARCH=arm64 rlk6737m_open_n_defconfig
#make ARCH=arm64 rlk6737m_open_n_defconfig

make -j4 -C $PWD O=$PWD/out ARCH=arm64
#make -j4 ARCH=arm64
