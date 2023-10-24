function run_shell() {
	docker run -v /var/cache/binpkgs/${1}:/var/cache/binpkgs \
		   -v /var/tmp/ccache:/var/tmp/ccache \
		   -v /var/cache/distfiles:/var/cache/distfiles \
		   --name ${1} \
		   -it ${1} /bin/bash

	time docker commit ${1} ${1} || exit 1

	docker rm ${1}
}



#run_shell amd64-testing-systemd-plasma
run_shell amd64-testing
#run_shell amd64-testing-plasma
