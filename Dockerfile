FROM ubuntu:14.04
MAINTAINER Jayanga Dissanayake "jsdjayanga@gmail.com"

RUN apt-get update \
    && apt-get install -y \
        mercurial \
        cmake \
        unzip \
        zip \
        openjdk-7-jdk \
        build-essential \
        libx11-dev libxext-dev libxrender-dev libxtst-dev libxt-dev \
        libcups2-dev \
        libfreetype6-dev \
        libasound2-dev \
        libxft-dev \
    && rm -rf /var/lib/apt/lists/*

RUN hg clone http://hg.openjdk.java.net/jdk8u/jdk8u;cd jdk8u;sh get_source.sh .; exit 0

CMD ["/bin/bash"]
