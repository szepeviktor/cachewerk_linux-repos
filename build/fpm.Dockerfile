FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update

RUN apt-get -y install \
  ruby ruby-dev rubygems \
  git vim nano curl wget rsync \
  build-essential autoconf libtool rpm binutils

RUN gem install fpm

WORKDIR /root/fpm
