FROM ubuntu:20.04
LABEL maintainer="sautoirs <sautoirs@protonmail.com>"
LABEL description="Image for cross building and debugging bare metal projects"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
	gcc-arm-none-eabi \
    	libnewlib-arm-none-eabi \
    	binutils-arm-none-eabi \
	cmake \
	ninja-build \
	make \
	subversion \
	git && \
    apt-get clean

WORKDIR /workdir

