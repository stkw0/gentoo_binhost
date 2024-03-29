function run_docker() {
	docker run -v /var/cache/binpkgs/${1}:/var/cache/binpkgs \
		   -v /var/tmp/ccache:/var/tmp/ccache \
		   -v /var/cache/distfiles:/var/cache/distfiles \
		   --name ${1} \
		   ${1} bash -c "\
			eix-sync 1> /dev/null; \
			emerge -quDN --rebuild-if-new-slot=y @system; \
			emerge -qc; \
			emerge -quDN --rebuild-if-new-slot=y @world; \
			emerge -qc; \
			haskell-updater;" || exit 1

#eclean-dist;

	# Create a new image with the changes of the last container executed
	time docker commit ${1} ${1} || exit 1
	
	# Remove container after commit
	docker rm ${1}
}

#run_docker amd64-testing-systemd-plasma
run_docker amd64-testing-plasma
#run_docker amd64-testing
#run_docker amd64-testing-musl
