FROM golang

RUN apt-get update \
    && apt-get install vi -y \
    ## vim 显示行号
    && echo set nu >> /etc/vim/vimrc \
    ## vim 允许复制
    && echo "if has('mouse')" >> ~/.vimrc \
    && echo "    set mouse-=a" >> ~/.vimrc \
    && echo "endif"  >> ~/.vimrc \
    && apt-get clean

## 新增LANG变量，解决中文乱码
ENV LANG=C.UTF-8

WORKDIR /root
