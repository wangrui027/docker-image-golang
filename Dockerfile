FROM golang

RUN apt-get update \
    && apt-get install vi -y \
	&& apt-get clean
	
WORKDIR /root
