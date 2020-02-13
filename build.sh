#!/bin/sh

DIR="$1"
mount -t proc /proc "$DIR/proc"
mount --rbind /sys "$DIR/sys"
mount --make-rslave "$DIR/sys"
mount --rbind /dev "$DIR/dev"
mount --make-rslave "$DIR/dev"
mount --bind /var/cache/binpkgs/$1 "$DIR/var/cache/binpkgs"
chroot $DIR eix-sync 1>/dev/null
chroot $DIR emerge -quUDN @world --jobs=2
#chroot $DIR emerge -qc
