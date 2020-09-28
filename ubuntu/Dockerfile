FROM ubuntu:bionic

ARG PKG=apt-get

RUN $PKG update -y \
    && $PKG install -y git vim curl wget \
    && $PKG clean

# 设置工作路径
ARG WORK_DIR="/root"
WORKDIR ${WORK_DIR}

