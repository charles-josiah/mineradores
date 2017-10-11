FROM ubuntu:latest 
MAINTAINER      charles josiah <charles.alandt@gmail>

RUN apt-get update && \
    apt-get install -y software-properties-common


RUN add-apt-repository ppa:ethereum/ethereum-qt 
RUN add-apt-repository ppa:ethereum/ethereum 
RUN apt-get -y update 
RUN apt-get -y install ethminer 

ENTRYPOINT ethminer -C -F http://etc.pool.minergate.com:51777/charles.alandt@gmail.com --disable-submit-hashrate
