function run_docker() {
	docker run -v /var/cache/binpkgs/${1}:/var/cache/binpkgs \
		   -v /var/tmp/ccache:/var/tmp/ccache \
		   -it ${1} \
			eix-sync 1> /dev/null; \
			emerge -quDN --with-bdeps=y @world --keep-going; \
			haskell-updater; \
			emerge -qc;
}

run_docker amd64-testing-systemd-plasma
run_docker amd64-testing-musl
