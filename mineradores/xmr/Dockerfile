FROM		ubuntu:latest
MAINTAINER      charles josiah <charles.alandt@gmail>


RUN		apt-get update -qq

RUN		apt-get install -qqy build-essential 
RUN		apt-get install -qqy automake
RUN		apt-get install -qqy libcurl4-openssl-dev
RUN		apt-get install -qqy git
RUN		apt-get install -qqy make

RUN 		git clone https://github.com/wolf9466/cpuminer-multi

RUN		cd cpuminer-multi && ./autogen.sh
RUN		cd cpuminer-multi && CFLAGS="-march=native" ./configure --disable-aes-ni
RUN		cd cpuminer-multi && make

WORKDIR		/cpuminer-multi
#ENTRYPOINT      ["/bin/bash"]

#ENTRYPOINT 	/cpuminer-multi/minerd  -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u charles.alandt@gmail.com
ENTRYPOINT 	/cpuminer-multi/minerd  -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u 42bSNKVPXD6Rfgy38NfcusY19ce67LfxZihDhxf2HZ7SN1KrKTYfMJ2jXqrT3anyZ22j7DEE74GkbVcQFyH2nNiC3hPnMhs  -p x
