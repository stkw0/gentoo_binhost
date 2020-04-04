#!/bin/sh
cd /root/gentoo_binhosts || exit
./emerge.sh amd64 "$1"
./emerge.sh amd64-desktop "$1" || exit
./emerge.sh amd64-plasma "$1" || exit
#./emerge.sh amd64-stable "$1" || exit
