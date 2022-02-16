FROM ubuntu:focal
ENV REFRESHED_AT 2021-09-03
ENV PROCESSOR RP2040
ENV TZ=America/Fortaleza 
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /home/dev

RUN apt-get update \
&& apt-get -y install git cmake gcc-arm-none-eabi python3 g++

# rp2040 related staff
RUN git clone https://github.com/raspberrypi/pico-sdk /opt/sdk/pico-sdk \
    && cd /opt/sdk/pico-sdk \
    && git submodule update --init \
    && cd /home/dev
ENV PICO_SDK_PATH=/opt/sdk/pico-sdk