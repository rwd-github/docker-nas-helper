FROM ubuntu:latest
MAINTAINER RWd <rwd-github@gmx.net>

RUN apt update \
	&& apt update && apt upgrade -y \
	&& apt install -y duperemove btrfs-progs rsync openssh-client \
	&& apt-get clean
	

