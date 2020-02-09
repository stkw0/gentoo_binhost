#!/bin/sh
cd /root/gentoo_binhosts || exit
./build.sh amd64 >> /tmp/build_log
./build.sh amd64-desktop >> /tmp/build_log
./build.sh amd64-plasma >> /tmp/build_log
./build.sh amd64-stable >> /tmp/build_log
