#!/bin/sh -x

DIR="$1"
mount -t proc /proc "$DIR/proc"
mount --rbind /sys "$DIR/sys"
mount --make-rslave "$DIR/sys"
mount --rbind /dev "$DIR/dev"
mount --make-rslave "$DIR/dev"
mount --bind /var/cache/binpkgs/amd64-testing "$DIR/var/cache/binpkgs"
chroot $DIR eix-sync 1>/dev/null
chroot $DIR emerge -qUuDN --with-bdeps=y @world --keep-going
chroot $DIR emerge -qc
