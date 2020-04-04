#!/bin/sh

DIR="$1"
mount -t proc /proc "$DIR/proc"
mount --rbind /sys "$DIR/sys"
mount --make-rslave "$DIR/sys"
mount --rbind /dev "$DIR/dev"
mount --make-rslave "$DIR/dev"
mount --bind /var/cache/binpkgs/amd64-testing "$DIR/var/cache/binpkgs"
mount --bind /var/tmp/ccache "$DIR/var/tmp/ccache"
chroot $DIR /bin/bash
