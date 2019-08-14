FROM ubuntu:latest
MAINTAINER RWd <rwd-github@gmx.net>

RUN apt update \
	&& apt upgrade -y \
	&& apt install -y locales

#RUN echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen \
#	&& locale-gen de_DE.UTF-8 \
#	&& update-locale LANG=de_DE.UTF-8 LC_MESSAGES=POSIX

#ENV LANG de_DE.UTF-8

# Set the locale
RUN locale-gen de_DE.UTF-8
ENV LANG de_DE.UTF-8
ENV LANGUAGE de_DE:de
ENV LC_ALL de_DE.UTF-8

RUN apt update \
	&& apt upgrade -y \
	&& apt install -y duperemove btrfs-progs rsync openssh-client \
	&& apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
	

