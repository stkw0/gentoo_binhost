#!/bin/sh
cd /root/gentoo_binhosts || exit
./build.sh amd64
./build.sh amd64-desktop
./build.sh amd64-plasma
./build.sh amd64-stable
