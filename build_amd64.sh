#!/bin/sh

DIR="amd64"
mount -t proc /proc "$DIR/proc"
mount --rbind /sys "$DIR/sys"
mount --make-rslave "$DIR/sys"
mount --rbind /dev "$DIR/dev"
mount --make-rslave "$DIR/dev"
mount --bind /var/cache/binpkgs/amd64 "$DIR/var/cache/binpkgs"
chroot $DIR emerge -quUDN @world
