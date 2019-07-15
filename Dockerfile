FROM debian:8-slim
RUN apt-get update
RUN apt-get -y install quagga
RUN apt-get -y install vim-tiny lsof strace iputils-ping traceroute tcpdump
RUN apt-get -y autoremove \
&& apt-get clean \
&& apt-get autoclean \
&& rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
