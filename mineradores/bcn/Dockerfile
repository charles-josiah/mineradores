FROM		ubuntu:latest
MAINTAINER	charles	josiah <charles.alandt@gmail>

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
#ENTRYPOINT 	/cpuminer-multi/minerd  -a cryptonight -o stratum+tcp://bcn.pool.minergate.com:45550 -u charles.alandt@gmail.com -p x
ENTRYPOINT 	/cpuminer-multi/minerd  -a cryptonight -o stratum+tcp://bcn.pool.minergate.com:45550  -u i22qSpG2uhdk5dXAyYRQGXc5WXnmhshfcnYPFrPvoYYCo1wr96KQ4Umcdi7ok6B5SQT6UXUtQgusruCoXbqUZm8VJAbfW61U -p x
