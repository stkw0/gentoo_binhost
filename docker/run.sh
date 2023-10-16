docker run -v /var/cache/binpkgs/amd64-testing-musl:/var/cache/binpkgs \
	   -v /var/tmp/ccache:/var/tmp/ccache \
	   -it amd64-testing-musl 

# chroot $DIR eix-sync 1>/dev/null
# chroot $DIR emerge -quDN --with-bdeps=y @world --keep-going
# chroot $DIR haskell-updater
# chroot $DIR emerge -qc
