FROM ubuntu:latest 
MAINTAINER      charles josiah <charles.alandt@gmail>

RUN apt-get update && \
    apt-get install -y ca-certificates wget && \
    rm -rf /var/lib/apt/lists/*


RUN wget -q --content-disposition https://minergate.com/download/deb-cli 
RUN dpkg -i *.deb 

#ENTRYPOINT /bin/bash    
ENTRYPOINT minergate-cli -user charles.alandt@gmail.com  -bcn 8 -fcn+xmr 8
