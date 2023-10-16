FROM gentoo/stage3:musl

RUN emerge-webrsync

ADD make.conf /etc/portage/make.conf

RUN emerge eix
RUN emerge ccache

RUN "/bin/bash"
