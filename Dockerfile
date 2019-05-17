FROM debian:8-slim
RUN apt-get update
RUN apt-get -y install quagga vim-tiny
RUN apt-get -y install net-tools lsof strace
RUN apt-get -y autoremove \
&& apt-get clean \
&& apt-get autoclean \
&& rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
