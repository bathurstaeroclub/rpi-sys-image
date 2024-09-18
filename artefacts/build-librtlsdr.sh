#!/usr/bin/env bash

set -e
set -x

git clone https://github.com/librtlsdr/librtlsdr.git
cd librtlsdr
mkdir build && cd build
cmake ../ -DINSTALL_UDEV_RULES=ON -DDETACH_KERNEL_DRIVER=ON
make
make install
ldconfig
