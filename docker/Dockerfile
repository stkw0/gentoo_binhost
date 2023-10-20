ARG TAG_NAME
FROM gentoo/stage3:${TAG_NAME}

RUN emerge-webrsync

ARG PROFILE_NAME
RUN if [[ -z "${PROFILE_NAME}" ]]; then eselect profile set ${PROFILE_NAME}; fi

ADD make.conf /etc/portage/make.conf
ADD world /var/lib/portage/world

RUN rm /etc/portage/binrepos.conf/gentoobinhost.conf
RUN emerge eix ccache 

RUN "/bin/bash"
