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
#ENTRYPOINT 	/cpuminer-multi/minerd -a cryptonight -o stratum+tcp://fcn-dsh.pool.minergate.com:45730 -u charles.alandt@gmail.com -p x 
ENTRYPOINT 	/cpuminer-multi/minerd -a cryptonight -o stratum+tcp://fcn.miner.center:6555  -u 6mvSycP9cZHKtZSveNELH7WWzdTZ1fxbxPWDgcUwKnhZ8xhimWJZBzEDWZgC9gig96dF3c2qLLwD8AT8Q6xV13UiHzam9ik  -p x 
