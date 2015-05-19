FROM ubuntu:14.04

MAINTAINER Andrew Teixeira <teixeira@broadinstitute.org>

ENV DEBIAN_FRONTEND=noninteractive \
    GAM_VERSION=3.44

RUN apt-get update && \
    apt-get -yq upgrade && \
    apt-get install -yq python python-openssl python-setuptools wget && \
    easy_install six && \
    mkdir /gam && \
    touch /gam/nobrowser.txt /gam/noupdatecheck.txt && \
    cd /tmp && \
    wget https://github.com/jay0lee/GAM/archive/v$GAM_VERSION.tar.gz && \
    tar -C /gam --strip-components=1 -zxf /tmp/v$GAM_VERSION.tar.gz && \
    rm -f /tmp/v$GAM_VERSION.tar.gz && \
    apt-get -yq clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*

ADD gam-runner.sh /usr/bin/gam.sh

RUN chmod 0755 /usr/bin/gam.sh

WORKDIR /gam
