FROM ubuntu:20.04
LABEL maintainer="sautoirs <sautoirs@protonmail.com>"
LABEL description="Image for cross building and debugging bare metal projects"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        curl \
        gcc-arm-none-eabi \
        libnewlib-arm-none-eabi \
        binutils-arm-none-eabi \
        cmake \
        ninja-build \
        make \
        g++ \
        clangd \
        python3 \
        subversion \
        git && \
    apt-get install -y \
        python3-pip && \
    pip3 install \
        cmake-language-server && \
    apt-get remove --purge -y \
        python3-pip && \
    apt-get autoremove -y && \
    apt-get clean

WORKDIR /workdir

