docker run -v /var/cache/binpkgs/amd64-testing-musl:/var/cache/binpkgs \
	   -v /var/tmp/ccache:/var/tmp/ccache \
	   -i amd64-testing-musl \
		eix-sync 1> /dev/null; \
		emerge -quDN --with-bdeps=y @world --keep-going; \
		haskell-updater; \
		emerge -qc;
