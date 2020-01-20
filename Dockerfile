FROM ubuntu:latest
MAINTAINER RWd <rwd-github@gmx.net>

# Set the locale
RUN apt update \
	&& apt upgrade -y \
	&& apt install -y locales \
	&& locale-gen de_DE.UTF-8
ENV LANG de_DE.UTF-8
ENV LANGUAGE de_DE:de
ENV LC_ALL de_DE.UTF-8

ENV TZ 'Europe/Berlin'
RUN echo $TZ > /etc/timezone                                        && \
    apt-get update && apt-get install -y tzdata                     && \
    rm /etc/localtime                                               && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime                  && \
    dpkg-reconfigure -f noninteractive tzdata                       && \
	apt-get clean                                                   && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt update \
	&& apt upgrade -y \
	&& apt install -y duperemove btrfs-progs rsync openssh-client ssmtp mpack tmux mc less \
	&& chfn -f "NAS" root \
	&& apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
	
