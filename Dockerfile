FROM ubuntu:latest
MAINTAINER RWd <rwd-github@gmx.net>

RUN apt update && apt install -y duperemove btrfs-progs

