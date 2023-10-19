function run_docker() {
	docker run -v /var/cache/binpkgs/${1}:/var/cache/binpkgs \
		   -v /var/tmp/ccache:/var/tmp/ccache \
		   --name ${1} \
		   -it ${1} bash -c "\
			eix-sync 1> /dev/null; \
			emerge -quDN --with-bdeps=y --keep-going --rebuild-if-new-slot=y      \
				--rebuild-if-new-rev=y --rebuild-if-new-ver=y --rebuild-if-unbuilt=y \
				--autounmask-continue=y @world; \

			haskell-updater; \
			emerge -qc;" || exit 1

#eclean-dist;

	# Create a new image with the changes of the last container executed
	docker commit ${1} ${1} || exit 1
	
	# Remove container after commit
	docker rm ${1}
}

function run_shell() {
	docker run -v /var/cache/binpkgs/${1}:/var/cache/binpkgs \
		   -v /var/tmp/ccache:/var/tmp/ccache \
		   --name ${1} \
		   -it ${1}
}



#run_shell amd64-testing-systemd-plasma
#run_shell amd64-testing-musl

run_docker amd64-testing-systemd-plasma
run_docker amd64-testing-plasma
#run_docker amd64-testing-musl
