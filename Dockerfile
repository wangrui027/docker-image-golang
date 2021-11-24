FROM golang

RUN apt-get update \
    && apt-get install vi -y \
    && echo set nu >> /etc/vim/vimrc \
    && apt-get clean

ENV LANG=C.UTF-8

WORKDIR /root
