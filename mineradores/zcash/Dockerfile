FROM debian
MAINTAINER      charles josiah <charles.alandt@gmail>

RUN apt-get update && \
    apt-get install -y ca-certificates wget cmake git build-essential libboost-all-dev   && \
    rm -rf /var/lib/apt/lists/*

RUN cd ; echo $PWD 
RUN git clone https://github.com/feeleep75/nheqminer.git && ls -l 
RUN cd nheqminer/nheqminer ; echo $PWD
RUN mkdir -p nheqminer/nheqminer/build 
RUN cd /nheqminer/nheqminer/build &&  cmake .. && make
#RUN cd ./nheqminer/nheqminer/build

ENV USER charles.alandt@gmail.com

#CMD /bin/bash
ENTRYPOINT ./nheqminer/nheqminer/build/nheqminer -l zec.pool.minergate.com:3357 -u $USER -cd 0
